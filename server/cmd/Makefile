TARGET=server

all: clean build

clean:
	rm -rf $(TARGET)

build:
	go build -o $(TARGET) main.go

# some funky stuff on how to install various chunks of func when there is no golanf code in the repo?
# install:
# 	go install \
# 		./vendor/github.com/gogo/protobuf/protoc-gen-gogo \
# 		./vendor/github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway \
# 		./vendor/github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger \
# 		./vendor/github.com/mwitkow/go-proto-validators/protoc-gen-govalidators \
# 		./vendor/github.com/rakyll/statik		