package main

// kristofer
/*
 * this is simple client of the generated server.
 *
 */
import (
	"flag"
	"log"

	pb "../server/pb"
	"google.golang.org/grpc"
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

	//var thisUser *pb.User

	fcl := NewFolioClient()
	defer fcl.Close()

	//userResp, err := client.ReadUser(ctx, &pb.ReadUserRequest{Id: 1})
	thisUser, err := fcl.GetUser("test@test.com")
	if err == nil {
		log.Printf("Get User %+v\n", thisUser)
	} else {
		log.Printf("error: %v", err)
		thisUser, _ = fcl.CreateUser(&pb.User{
			Email:     "test@test.com",
			Lastname:  "McTestface",
			Firstname: "Testy",
		})
		log.Printf("New User %+v\n", thisUser)
	}

	thisUser, err = fcl.GetUser("eat@joes.com")
	if err == nil {
		log.Printf("Get User %+v\n", thisUser)
	} else {
		log.Printf("error: %v", err)
		thisUser, _ = fcl.CreateUser(&pb.User{
			Email:     "eat@joes.com",
			Lastname:  "Joes",
			Firstname: "Eat",
		})
		log.Printf("New User %+v\n", thisUser)
	}

	thisUser, err = fcl.GetUser("kris@test.com")
	if err == nil {
		log.Printf("Get User %+v\n", thisUser)
	} else {
		log.Printf("error: %v", err)
		thisUser, _ = fcl.CreateUser(&pb.User{
			Email:     "kris@test.com",
			Lastname:  "Younger",
			Firstname: "Kris",
		})
		log.Printf("New User %+v\n", thisUser)
	}

	// create a test folio

	users, err := fcl.client.ListUser(fcl.ctx, &pb.ListUserRequest{}, &grpc.EmptyCallOption{})

	if err != nil {
		log.Fatalf("Failed List User call %v", err)
	}

	userList := users.GetResults()
	log.Printf("list of users is %v long.", len(userList))

	for l1 := range userList {
		log.Println(l1)
	}

	// err = fcl.SaveUser(thisUser)
	// if err == nil {
	// 	log.Printf("SavedUser %+v\n", thisUser)
	// } else {
	// 	log.Printf("Unable to Save User %+v -  %v\n", thisUser, err)
	// }

	// accountResp, err := fcl.client.ReadAccount(fcl.ctx, &pb.ReadAccountRequest{Id: 1})

	// if err == nil {
	// 	log.Printf("Found Account %+v\n", accountResp.Result)
	// } else {
	// 	thisAccount, _ = fcl.CreateAccount(&pb.Account{
	// 		UUID:     fmt.Sprintf("%v", GimmeUUID()),
	// 		Name:     fmt.Sprintf("Acct: %v %v", thisUser.Firstname, thisUser.Lastname),
	// 		Nickname: "Default",
	// 		Kind:     "Digital Asset Trust",
	// 		Users:    []*pb.User{thisUser},
	// 	})
	// 	log.Printf("New Account %+v\n", thisAccount)
	// }

}
