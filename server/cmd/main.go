package main

import (
	"log"

	"../../server"
	gorm "github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/sqlite"
	_ "github.com/mattn/go-sqlite3"
)

func main() {

	db, err := gorm.Open("sqlite3", "/tmp/foliosvc.db?_busy_timeout=3000")
	if err != nil {
		log.Fatalf("Database nope %v", err)
	}
	//db.LogMode(true)

	h := server.NewFolioServer(db)
	// u := &pb.User{
	// 	Email:     "test@test.com",
	// 	Lastname:  "McTestface",
	// 	Firstname: "Testy",
	// }
	//foo, err := h.m.
	h.Start()
	h.WaitStop(db)
}
