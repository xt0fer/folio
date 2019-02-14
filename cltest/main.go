package main

// kristofer
/*
 * this is simple client of the generated server.
 *
 */
import (
	"flag"
	"fmt"
	"log"

	pb "../server/pb"
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

	var thisUser *pb.User
	var thisAccount *pb.Account

	fcl := NewFolioClient()
	defer fcl.Close()

	//userResp, err := client.ReadUser(ctx, &pb.ReadUserRequest{Id: 1})
	userResp, err := fcl.GetUser("test@test.com")
	if err == nil {
		log.Printf("Get User %+v\n", userResp)
	} else {
		thisUser, _ = fcl.CreateUser(&pb.User{
			Email:     "test@test.com",
			Lastname:  "McTestface",
			Firstname: "Testy",
		})
		log.Printf("New User %+v\n", thisUser)
	}
	accountResp, err := fcl.client.ReadAccount(fcl.ctx, &pb.ReadAccountRequest{Id: 1})

	if err == nil {
		log.Printf("Found Account %+v\n", accountResp.Result)
	} else {
		thisAccount, _ = fcl.CreateAccount(&pb.Account{
			UUID:     fmt.Sprintf("%v", GimmeUUID()),
			Name:     fmt.Sprintf("Acct: %v %v", thisUser.Firstname, thisUser.Lastname),
			Nickname: "Default",
			Kind:     "Digital Asset Trust",
			Users:    []*pb.User{thisUser},
		})
		log.Printf("New Account %+v\n", thisAccount)
	}

}
