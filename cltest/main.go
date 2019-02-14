package main

// kristofer
/*
 * this is simple client of the generated server.
 *
 */
import (
	"context"
	"errors"
	"flag"
	"fmt"
	"log"
	"time"

	pb "../server/pb"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials"
	"google.golang.org/grpc/testdata"

	uuid "github.com/satori/go.uuid"
)

var (
	tls                = flag.Bool("tls", false, "Connection uses TLS if true, else plain TCP")
	caFile             = flag.String("ca_file", "", "The file containning the CA root cert file")
	serverAddr         = flag.String("server_addr", "127.0.0.1:8080", "The server address in the format of host:port")
	local8081          = flag.String("server_addr2", "127.0.0.1:8081", "The server address in the format of host:port")
	serverHostOverride = flag.String("server_host_override", "x.test.youtube.com", "The server name use to verify the hostname returned by TLS handshake")
)

func main() {
	flag.Parse()
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

	conn2, err := grpc.Dial(*local8081, opts...)
	if err != nil {
		log.Fatalf("fail to dial: %v", err)
	}
	defer conn2.Close()
	client := pb.NewFolioServiceClient(conn2)
	ctx, cancel := context.WithTimeout(context.Background(), 3*time.Second)
	defer cancel()

	var thisUser *pb.User
	var thisAccount *pb.Account

	//userResp, err := client.ReadUser(ctx, &pb.ReadUserRequest{Id: 1})
	userResp, err := GetUser(client, ctx, "test@test.com")
	if err == nil {
		log.Printf("Get User %+v\n", userResp)
	} else {
		thisUser, _ = CreateUser(client, ctx, &pb.User{
			Email:     "test@test.com",
			Lastname:  "McTestface",
			Firstname: "Testy",
		})
		log.Printf("New User %+v\n", thisUser)
	}
	accountResp, err := client.ReadAccount(ctx, &pb.ReadAccountRequest{Id: 1})
	// optz := &pb.ReadAccountRequest{}
	// accountResp, err := client.ReadAccountByEmail(ctx, optz)
	if err == nil {
		log.Printf("Found Account %+v\n", accountResp.Result)
	} else {
		thisAccount, _ = CreateAccount(client, ctx, &pb.Account{
			UUID:     fmt.Sprintf("%v", GimmeUUID()),
			Name:     fmt.Sprintf("Acct: %v %v", thisAccount.Firstname, thisAccount.Lastname),
			Nickname: "Default",
			Kind:     "Digital Asset Trust",
			Users:    []*pb.User{thisUser},
		})
		log.Printf("New Account %+v\n", thisAccount)
	}

}

func CreateUser(client pb.FolioServiceClient, ctx context.Context, owner *pb.User) (*pb.User, error) {
	userResp, err := client.CreateUser(ctx, &pb.CreateUserRequest{
		Payload: owner,
	}, &grpc.EmptyCallOption{})
	if userResp == nil {
		log.Fatalf("Failed Create User call userResp nil %v", err)
	}
	return userResp.GetResult(), err
}

func CreateAccount(client pb.FolioServiceClient, ctx context.Context, nacct *pb.Account) (*pb.Account, error) {
	acct, err := client.CreateAccount(ctx, &pb.CreateAccountRequest{
		Payload: nacct,
	}, &grpc.EmptyCallOption{})
	if err != nil {
		log.Fatalf("Failed Create Account call %v", err)
	}
	log.Printf("Create Account Response %+v\n", acct)
	return acct.GetResult(), nil
}

func GimmeUUID() uuid.UUID {
	u, _ := uuid.NewV4()
	return u
}

// GetAccount ...
func GetUser(client pb.FolioServiceClient, ctx context.Context, email string) (*pb.User, error) {

	users, err := client.ListUser(ctx, &pb.ListUserRequest{}, &grpc.EmptyCallOption{})

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
