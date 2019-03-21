package cltest

import (
	"encoding/json"
	"fmt"
	"log"
	"testing"

	pb "../server/pb"
	"google.golang.org/grpc"
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
func TestGetUserList(t *testing.T) {
	fcl := NewFolioClient()
	defer fcl.Close()

	users, err := fcl.Client.ListUser(fcl.Ctx, &pb.ListUserRequest{}, &grpc.EmptyCallOption{})

	if err != nil {
		log.Fatalf("Failed List User call %v", err)
	}

	userList := users.GetResults()
	log.Printf("list of users is %v long.", len(userList))

	for l1 := range userList {
		log.Println(l1)
	}

}

func TestMakeFolios(t *testing.T) {
	fcl := NewFolioClient()
	defer fcl.Close()

	thisUser, err := fcl.GetUser("kris@test.com")

	note, _ := fcl.CreateNote(&pb.Note{
		Name: fmt.Sprintf("note %v", GimmeUUID()),
		Note: "simple note",
	})
	n2, _ := fcl.CreateNote(&pb.Note{
		Name: fmt.Sprintf("note %v", GimmeUUID()),
		Note: "another simple note. \n with stuff.",
	})
	f1, _ := fcl.CreateFolio(&pb.Folio{
		UUID:  fmt.Sprintf("%v", GimmeUUID()),
		Name:  fmt.Sprintf("folio %v", GimmeUUID()),
		Desc:  "a simple folio",
		Notes: []*pb.Note{note, n2},
	})
	log.Println(f1)

	thisUser, err = fcl.GetUser("kris@test.com")
	f1.Owner = thisUser
	err = fcl.SaveFolio(f1)
	if err == nil {
		log.Printf("Saved Folio %+v\n", f1)
	} else {
		log.Printf("Unable to Save Folio %+v -  %v\n", f1, err)
	}

}

func TestGetFolioList(t *testing.T) {
	fcl := NewFolioClient()
	defer fcl.Close()

	l, err := fcl.Client.ListFolio(fcl.Ctx, &pb.ListFolioRequest{}, &grpc.EmptyCallOption{})

	if err != nil {
		log.Fatalf("Failed List Folio call %v", err)
	}

	fs := l.GetResults() // fs => folios
	log.Printf("list of folios is %v long.", len(fs))
	data, err := json.Marshal(fs)
	if err != nil {
		log.Fatal(err)
	}
	log.Printf("json: %s\n", data)

	for n, l1 := range fs {
		log.Printf("f:[%v] %v, %v", n, l1.Name, l1.UUID)
	}

}
