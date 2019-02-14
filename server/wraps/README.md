# Wraps

is a start of code generation tool to wrap the protos of the other generated code.

this code gets generated and placed into the ../crud.go file for the server.

run 

`
go build -o wraps wraps.go

./wraps > crud.go
`