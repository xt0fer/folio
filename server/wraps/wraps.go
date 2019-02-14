package main

import (
	"bytes"
	"fmt"
	"log"
	"text/template"
)

type Combo struct {
	Op    string
	Typee string
	Kind  string
	Back  string
}

func main() {
	t, err := template.ParseFiles("./wrapper-templ")
	if err != nil {
		log.Fatal("unable to read template file ")
	}
	Ops := []string{"Create", "Read", "Update", "Delete", "List"}
	Typees := []string{"User", "Folio", "Tag", "Note", "Asset", "Share"} // "Account", "Archive",
	//.Op
	//.Typee
	buf := bytes.NewBuffer([]byte{})

	preamble := `package server

import (
	"context"
	"log"
	
	pb "../server/pb"
)

type FolioSvc struct {
	pb.FolioServiceDefaultServer
}

`

	_, err = buf.WriteString(preamble) //ignore the write's n bytes.
	if err != nil {
		log.Fatal("unable to add preamble to output")
	}

	for _, typee := range Typees {
		for _, op := range Ops {
			sweaters := &Combo{Op: op, Typee: typee}
			if op == "Create" {
				sweaters.Kind = fmt.Sprintf("nugget, err := pb.Default%v%v(ctx, in.Payload, m.DB)", op, typee)
				sweaters.Back = "Result: nugget,"
			}
			if op == "Read" {
				sweaters.Kind = fmt.Sprintf("nugget, err := pb.Default%v%v(ctx, &pb.%v{Id: in.Id}, m.DB)", op, typee, typee)
				sweaters.Back = "Result: nugget,"
			}
			if op == "Update" {
				sweaters.Kind = fmt.Sprintf("nugget, err := pb.DefaultStrict%v%v(ctx, in.Payload, m.DB)", op, typee)
				sweaters.Back = "Result: nugget,"
			}
			if op == "Delete" {
				sweaters.Kind = fmt.Sprintf("err := pb.Default%v%v(ctx, &pb.%v{Id: in.Id}, m.DB)", op, typee, typee)
				sweaters.Back = ""
			}
			if op == "List" {
				sweaters.Kind = fmt.Sprintf("nugget, err := pb.Default%v%v(ctx, m.DB)", op, typee)
				sweaters.Back = "Results: nugget,"
			}
			err = t.Execute(buf, sweaters)
			if err != nil {
				panic(err)
			}
		}
	}
	fmt.Printf("%v\n", buf.String())
}
