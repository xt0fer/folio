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

	users, err := client.Users(nil).Exec(ctx)
	if err != nil {
		panic(err)
	}
	for _, user := range users {
		fmt.Printf("%v\n", user)
	}
}
