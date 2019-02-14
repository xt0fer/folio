package main

import (
	"context"
	"errors"
	"log"
	"time"

	pb "../server/pb"

	uuid "github.com/satori/go.uuid"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials"
	"google.golang.org/grpc/testdata"
)

type FolioClient struct {
	client pb.FolioServiceClient
	cancel context.CancelFunc
	ctx    context.Context
	conn   *grpc.ClientConn
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

	newbie.conn, err = grpc.Dial(*local8081, opts...)
	if err != nil {
		log.Fatalf("fail to dial: %v", err)
	}
	newbie.client = pb.NewFolioServiceClient(newbie.conn)
	newbie.ctx, newbie.cancel = context.WithTimeout(context.Background(), 3*time.Second)

	return newbie
}

// Close ... clean up FolioClient items
func (fc *FolioClient) Close() {
	fc.conn.Close()
	fc.cancel()
}

// CreateUser ...
func (fc *FolioClient) CreateUser(owner *pb.User) (*pb.User, error) {
	userResp, err := fc.client.CreateUser(fc.ctx, &pb.CreateUserRequest{
		Payload: owner,
	}, &grpc.EmptyCallOption{})
	if userResp == nil {
		log.Fatalf("Failed Create User call userResp nil %v", err)
	}
	return userResp.GetResult(), err
}

// CreateAccount ...
func (fc *FolioClient) CreateAccount(nacct *pb.Account) (*pb.Account, error) {
	acct, err := fc.client.CreateAccount(fc.ctx, &pb.CreateAccountRequest{
		Payload: nacct,
	}, &grpc.EmptyCallOption{})
	if err != nil {
		log.Fatalf("Failed Create Account call %v", err)
	}
	log.Printf("Create Account Response %+v\n", acct)
	return acct.GetResult(), nil
}

// GimmeUUID ...
func GimmeUUID() uuid.UUID {
	u, _ := uuid.NewV4()
	return u
}

// GetUser ...
func (fc *FolioClient) GetUser(email string) (*pb.User, error) {

	users, err := fc.client.ListUser(fc.ctx, &pb.ListUserRequest{}, &grpc.EmptyCallOption{})

	if err != nil {
		log.Fatalf("Failed List User call %v", err)
	}

	userList := users.GetResults()
	resultAccount := &pb.User{}
	// search and find the user.
	for _, a := range userList {
		if a.Email == email {
			resultAccount = a
			return resultAccount, nil
		}
	}
	return nil, errors.New("unable to find the account")
}
