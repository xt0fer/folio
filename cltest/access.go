package cltest

import (
	"context"
	"errors"
	"flag"
	"log"
	"time"

	pb "../server/pb"

	uuid "github.com/satori/go.uuid"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials"
	"google.golang.org/grpc/testdata"
)

var (
	tls                = flag.Bool("tls", false, "Connection uses TLS if true, else plain TCP")
	caFile             = flag.String("ca_file", "", "The file containning the CA root cert file")
	serverAddr         = flag.String("server_addr", "127.0.0.1:8080", "The server address in the format of host:port")
	local8081          = flag.String("server_addr2", "127.0.0.1:8081", "The server address in the format of host:port")
	serverHostOverride = flag.String("server_host_override", "x.test.youtube.com", "The server name use to verify the hostname returned by TLS handshake")
)

// FolioClient ...
type FolioClient struct {
	Client pb.FolioServiceClient
	Cancel context.CancelFunc
	Ctx    context.Context
	Conn   *grpc.ClientConn
}

// NewFolioClient ...
func NewFolioClient() *FolioClient {
	newbie := &FolioClient{}
	var err error

	var opts []grpc.DialOption
	if *tls {
		if *caFile == "" {
			*caFile = testdata.Path("ca.pem")
		}
		creds, err := credentials.NewClientTLSFromFile(*caFile, *serverHostOverride)
		if err != nil {
			log.Fatalf("Failed to create TLS credentials %v", err)
		}
		opts = append(opts, grpc.WithTransportCredentials(creds))
	} else {
		opts = append(opts, grpc.WithInsecure())
	}

	newbie.Conn, err = grpc.Dial(*local8081, opts...)
	if err != nil {
		log.Fatalf("fail to dial: %v", err)
	}
	newbie.Client = pb.NewFolioServiceClient(newbie.Conn)
	newbie.Ctx, newbie.Cancel = context.WithTimeout(context.Background(), 3*time.Second)

	st, err := newbie.Client.Ping(newbie.Ctx, &pb.PingStatus{})
	if err != nil {
		log.Panicf("No server running on %v -- err %v", *local8081, err)
	}
	log.Println("Svr: ", st.Id, st.Status, *local8081)
	return newbie
}

// Close ... clean up FolioClient items
func (fc *FolioClient) Close() {
	fc.Conn.Close()
	fc.Cancel()
}

// CreateUser ...
func (fc *FolioClient) CreateUser(owner *pb.User) (*pb.User, error) {
	userResp, err := fc.Client.CreateUser(fc.Ctx, &pb.CreateUserRequest{
		Payload: owner,
	}, &grpc.EmptyCallOption{})
	if userResp == nil {
		log.Fatalf("Failed Create User call userResp nil %v", err)
	}
	return userResp.GetResult(), err
}

// GimmeUUID ...
func GimmeUUID() uuid.UUID {
	u, _ := uuid.NewV4()
	return u
}

// GetUser ...
func (fc *FolioClient) GetUser(email string) (*pb.User, error) {

	users, err := fc.Client.ListUser(fc.Ctx, &pb.ListUserRequest{}, &grpc.EmptyCallOption{})

	if err != nil {
		log.Fatalf("Failed in GetUser call %v", err)
		return nil, err
	}

	userList := users.GetResults()
	log.Printf("list of users is %v long.", len(userList))
	resultAccount := &pb.User{}
	// search and find the user.
	for _, a := range userList {
		if a.Email == email {
			resultAccount = a
			return resultAccount, nil
		}
	}
	return nil, errors.New("unable to find the user")
}

// GetUserList ...
func (fc *FolioClient) GetUserList() ([]*pb.User, error) {

	users, err := fc.Client.ListUser(fc.Ctx, &pb.ListUserRequest{}, &grpc.EmptyCallOption{})

	if err != nil {
		log.Fatalf("Failed GetUserList call %v", err)
		return nil, err
	}

	userList := users.GetResults()
	log.Printf("list of users is %v long.", len(userList))
	return userList, nil
}

// SaveUser ...
func (fc *FolioClient) SaveUser(user *pb.User) error {

	_, err := fc.Client.UpdateUser(fc.Ctx, &pb.UpdateUserRequest{
		Payload: user,
	})
	if err != nil {
		return err
	}
	return nil
}

// CreateNote ...
func (fc *FolioClient) CreateNote(n *pb.Note) (*pb.Note, error) {
	resp, err := fc.Client.CreateNote(fc.Ctx, &pb.CreateNoteRequest{
		Payload: n,
	}, &grpc.EmptyCallOption{})
	if resp == nil {
		log.Fatalf("Failed Create note call resp nil %v", err)
	}
	return resp.GetResult(), err
}

// CreateFolio ...
func (fc *FolioClient) CreateFolio(n *pb.Folio) (*pb.Folio, error) {
	resp, err := fc.Client.CreateFolio(fc.Ctx, &pb.CreateFolioRequest{
		Payload: n,
	}, &grpc.EmptyCallOption{})
	if resp == nil {
		log.Fatalf("Failed Create folio call resp nil %v", err)
	}
	return resp.GetResult(), err
}

// SaveFolio ...
func (fc *FolioClient) SaveFolio(f *pb.Folio) error {

	_, err := fc.Client.UpdateFolio(fc.Ctx, &pb.UpdateFolioRequest{
		Payload: f,
	})
	if err != nil {
		return err
	}
	return nil
}
