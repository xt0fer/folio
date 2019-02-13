package main

import (
	"log"

	gorm "github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/sqlite"
	"github.com/kristofer/frpc/server"
	_ "github.com/mattn/go-sqlite3"
)

func main() {

	db, err := gorm.Open("sqlite3", "/tmp/gorm.db?_busy_timeout=3000")
	if err != nil {
		log.Fatalf("Database nope %v", err)
	}
	//db.LogMode(true)

	h := server.NewAccountSvc(db)
	// u := &pb.User{
	// 	Email:     "test@test.com",
	// 	Lastname:  "McTestface",
	// 	Firstname: "Testy",
	// }
	//foo, err := h.m.
	h.Start()
	h.WaitStop(db)
}
