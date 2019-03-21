package cltest

import (
	"log"
	"testing"

	pb "../server/pb"
)

func TestGetUser(t *testing.T) {
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
		thisUser, err = fcl.GetUser("test@test.com")
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
		thisUser, err = fcl.GetUser("kris@test.com")
		log.Printf("New User %+v\n", thisUser)
	}

}
