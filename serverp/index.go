package main

import (
	"context"
	"fmt"

	prisma "./generated/prisma-client"
)

func main() {
	client := prisma.New(nil)
	ctx := context.TODO()

	//Create a new user
	// name := "kryounger@gmail.com"
	// newUser, err := client.CreateUser(prisma.UserCreateInput{
	// 	Email:     &name,
	// 	Firstname: "Kristofer",
	// 	Lastname:  "Younger",
	// }).Exec(ctx)
	// if err != nil {
	// 	panic(err)
	// }
	// fmt.Printf("Created new user: %+v\n", newUser)
	fmt.Println("start")
	users, err := client.Users(nil).Exec(ctx)
	if err != nil {
		panic(err)
	}
	for _, user := range users {
		fmt.Printf("Users\n%v\n", user)
	}

	folios, err := client.Folios(nil).Exec(ctx)
	if err != nil {
		panic(err)
	}
	for _, f := range folios {
		fmt.Printf(">>Folios\n>> %v\n", f)
	}

	filter := "kris@youngers.org"
	auser, err := client.User(
		prisma.UserWhereUniqueInput{
			Email: &filter,
		}).Exec(ctx)

	//for _, f := range auser {
	folios, err = client.Folios(&prisma.FoliosParams{
		Where: &prisma.FolioWhereInput{ID: &auser.ID},
	}).Exec(ctx)
	if err != nil {
		panic(err)
	}
	fmt.Printf(">>Single User\n%+v\n%s\n", auser, *auser.Email)
	for _, f := range folios {
		fmt.Printf(">>Folios\n>> %+v\n", f)
	}

	//}

	// email := "alice@prisma.io"
	postsByUser, err := client.User(prisma.UserWhereUniqueInput{
		Email: &filter,
	}).Posts(nil).Exec(ctx)

	if err != nil {
		panic(err)
	}
	fmt.Printf("Posts\n%+v\n", postsByUser)
}
