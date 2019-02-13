package server

import (
	"context"
	"log"
	"net"
	"net/http"
	"sync"

	"github.com/grpc-ecosystem/grpc-gateway/runtime"
	"github.com/jinzhu/gorm"
	pb "github.com/kristofer/frpc/pb"
	"google.golang.org/grpc"
)

// Accounter ...
type Accounter struct {
	wg sync.WaitGroup
}

// New creates new server greeter
func New() *Accounter {
	return &Accounter{}
}

// Start starts server
func (g *Accounter) Start() {
	g.wg.Add(1)
	go func() {
		log.Fatal(g.startGRPC())
		g.wg.Done()
	}()
	g.wg.Add(1)
	go func() {
		log.Fatal(g.startREST())
		g.wg.Done()
	}()
}
func (g *Accounter) WaitStop() {
	g.wg.Wait()
}
func (g *Accounter) startGRPC() error {
	lis, err := net.Listen("tcp", "localhost:8080")
	if err != nil {
		return err
	}
	grpcServer := grpc.NewServer()
	pb.RegisterAccounterServer(grpcServer, g)
	grpcServer.Serve(lis)
	return nil
}
func (g *Accounter) startREST() error {
	ctx := context.Background()
	ctx, cancel := context.WithCancel(ctx)
	defer cancel()

	mux := runtime.NewServeMux()
	opts := []grpc.DialOption{grpc.WithInsecure()} // no https?
	err := pb.RegisterAccounterHandlerFromEndpoint(ctx, mux, ":8080", opts)
	if err != nil {
		return err
	}

	return http.ListenAndServe(":8090", mux)
}

// GetAccount says hello
func (g *Accounter) GetAccount(ctx context.Context, r *pb.AcctRequest) (*pb.Account, error) {
	if err := r.Validate(); err != nil {
		return nil, err
	}
	return &pb.Account{
		Name: r.Name, //fmt.Sprintf("account: %s", r.Name),
	}, nil
}

// Test
/*
curl -XGET http://localhost:8090/api/acct/foo
*/

// SaveAccount says hello
func (g *Accounter) SaveAccount(ctx context.Context, r *pb.Account) (*pb.Account, error) {
	if err := r.Validate(); err != nil {
		return nil, err
	}
	log.Println("Account posted: ", r.Name)
	return r, nil
}

/*
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"Name":"foo"}' \
  http://localhost:8090/api/acct/foo
*/

// Accounter ...
type AccountSvc struct {
	m  *AccountSvcTioga //*pb.AccountServiceDefaultServer
	wg sync.WaitGroup
}

// New creates new server greeter
func NewAccountSvc(db *gorm.DB) *AccountSvc {
	if db == nil {
		log.Printf("NO DATABASE db: %+v\n", db)
	}
	log.Printf("db: %+v\n", db)
	if !db.HasTable(&pb.AccountORM{}) {
		db.CreateTable(&pb.AccountORM{}, &pb.UserORM{}, &pb.ArchiveORM{}, &pb.FolioORM{},
			&pb.TagORM{}, &pb.ShareORM{}, &pb.AssetORM{}, &pb.NoteORM{},
			&pb.VersionORM{}, &pb.AttributeORM{})
		log.Printf("created tables: %+v\n", db)
	}
	db.AutoMigrate(&pb.AccountORM{}, &pb.UserORM{}, &pb.ArchiveORM{}, &pb.FolioORM{},
		&pb.TagORM{}, &pb.ShareORM{}, &pb.AssetORM{}, &pb.NoteORM{},
		&pb.VersionORM{}, &pb.AttributeORM{})
	rt := &AccountSvcTioga{}
	rt.DB = db
	return &AccountSvc{
		m: rt,
	}
}

// Start starts server
func (g *AccountSvc) Start() {
	g.wg.Add(1)
	go func() {
		log.Fatal("Account Svc GRPC start", g.startGRPC())
		g.wg.Done()
	}()
	// g.wg.Add(1)
	// go func() {
	// 	log.Fatal(g.startREST())
	// 	g.wg.Done()
	// }()
}
func (g *AccountSvc) WaitStop(db *gorm.DB) {
	g.wg.Wait()
	defer db.Close()
	log.Println("shutting down...")
}
func (g *AccountSvc) startGRPC() error {
	grpc.EnableTracing = true
	lis, err := net.Listen("tcp", "127.0.0.1:8081")
	if err != nil {
		return err
	}
	grpcServer := grpc.NewServer()
	log.Println("RegisterAccountServiceServer...")

	pb.RegisterAccountServiceServer(grpcServer, g.m)
	grpcServer.Serve(lis)
	return nil
}
