package server

import (
	"log"
	"net"
	"sync"

	pb "./pb"
	"github.com/jinzhu/gorm"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"
)

// type FolioSvcDefault struct {
// 	pb.FolioServiceDefaultServer
// }

// FolioServer ...
type FolioServer struct {
	m  *FolioSvc //*pb.AccountServiceDefaultServer
	wg sync.WaitGroup
}

// New creates new server greeter
func NewFolioServer(db *gorm.DB) *FolioServer {
	if db == nil {
		log.Printf("NO DATABASE db: %+v\n", db)
	}
	log.Printf("db: %+v\n", db)
	if !db.HasTable(&pb.UserORM{}) {
		db.CreateTable(&pb.UserORM{}, &pb.FolioORM{}, //&pb.AccountORM{}, &pb.ArchiveORM{},
			&pb.TagORM{}, &pb.ShareORM{}, &pb.AssetORM{}, &pb.NoteORM{})
		log.Printf("created tables: %+v\n", db)
	}
	db.AutoMigrate(&pb.UserORM{}, &pb.FolioORM{}, //&pb.AccountORM{}, &pb.ArchiveORM{},
		&pb.TagORM{}, &pb.ShareORM{}, &pb.AssetORM{}, &pb.NoteORM{})
	rt := &FolioSvc{}
	rt.DB = db
	return &FolioServer{
		m: rt,
	}
}

// Start starts server
func (g *FolioServer) Start() {
	g.wg.Add(1)
	go func() {
		log.Fatal("Account Svc GRPC start", g.startGRPC())
		g.wg.Done()
	}()
}

func (g *FolioServer) WaitStop(db *gorm.DB) {
	g.wg.Wait()
	defer db.Close()
	log.Println("shutting down...")
}

func (g *FolioServer) startGRPC() error {
	grpc.EnableTracing = true
	lis, err := net.Listen("tcp", "127.0.0.1:8081")
	if err != nil {
		return err
	}
	grpcServer := grpc.NewServer()
	reflection.Register(grpcServer)
	log.Println("RegisterFolioServiceServer...")

	//pb.RegisterFolioServiceServer(grpcServer, g.m)
	pb.RegisterFolioServiceServer(grpcServer, g.m)
	grpcServer.Serve(lis)
	return nil
}
