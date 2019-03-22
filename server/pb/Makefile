
# PROTO_VER = 3.5.1_1
# PROTO_VER = 3.6.1.3_1
PROTO_VER = 3.7.0

PROTO_ROOT_DIR = $(shell brew --prefix)/Cellar/protobuf/$(PROTO_VER)/include

proto: golang dart

golang:
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src \
		-I${GOPATH}/src/github.com \
		-I$(PROTO_ROOT_DIR) \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway \
		-I${GOPATH}/src/github.com/infobloxopen/protoc-gen-gorm/options/gorm.proto \
		-I${GOPATH}/src/github.com/infobloxopen/atlas-app-toolkit/query/collection_operators.proto \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		-I${GOPATH}/src/github.com/lyft/protoc-gen-validate \
		--gorm_out=. \
		folio.proto
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src \
		-I${GOPATH}/src/github.com \
		-I$(PROTO_ROOT_DIR) \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway \
		-I${GOPATH}/src/github.com/infobloxopen/protoc-gen-gorm/options/gorm.proto \
		-I${GOPATH}/src/github.com/infobloxopen/atlas-app-toolkit/query/collection_operators.proto \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		-I${GOPATH}/src/github.com/lyft/protoc-gen-validate \
		--go_out=plugins=grpc:. \
		folio.proto
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src \
		-I${GOPATH}/src/github.com \
		-I$(PROTO_ROOT_DIR) \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway \
		-I${GOPATH}/src/github.com/infobloxopen/protoc-gen-gorm/options/gorm.proto \
		-I${GOPATH}/src/github.com/infobloxopen/atlas-app-toolkit/query/collection_operators.proto \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		-I${GOPATH}/src/github.com/lyft/protoc-gen-validate \
		--grpc-gateway_out=logtostderr=true:. \
		folio.proto
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src \
		-I${GOPATH}/src/github.com \
		-I$(PROTO_ROOT_DIR) \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway \
		-I${GOPATH}/src/github.com/infobloxopen/protoc-gen-gorm/options/gorm.proto \
		-I${GOPATH}/src/github.com/infobloxopen/atlas-app-toolkit/query/collection_operators.proto \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		-I${GOPATH}/src/github.com/lyft/protoc-gen-validate \
		--swagger_out=logtostderr=true:. \
		folio.proto
	
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src \
		-I${GOPATH}/src/github.com \
		-I$(PROTO_ROOT_DIR) \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway \
		-I${GOPATH}/src/github.com/infobloxopen/protoc-gen-gorm/options/gorm.proto \
		-I${GOPATH}/src/github.com/infobloxopen/atlas-app-toolkit/query/collection_operators.proto \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		-I${GOPATH}/src/github.com/lyft/protoc-gen-validate \
		--validate_out="lang=go:." \
		folio.proto

# dart items
dart:
	-rm ../../client/folios/lib/gen/*.dart
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		-I${GOPATH}/src/github.com/lyft/protoc-gen-validate \
		--dart_out=grpc:../../client/folios/lib \
		/usr/local/include/google/protobuf/*.proto
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		-I${GOPATH}/src/github.com/lyft/protoc-gen-validate \
		--dart_out=grpc:../../client/folios/lib/gen \
		infoblox/api/*.proto
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src \
		-I${GOPATH}/src/github.com \
		-I$(PROTO_ROOT_DIR) \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		-I${GOPATH}/src/github.com/lyft/protoc-gen-validate \
		--dart_out=grpc:../../client/folios/lib/gen \
		folio.proto

# 		-I${GOPATH}/src/github.com/infobloxopen/protoc-gen-gorm/options/gorm.proto \
# 		-I${GOPATH}/src/github.com/infobloxopen/atlas-app-toolkit/query/collection_operators.proto \

grpcui:
	grpcui -proto=folio.proto -import-path=. \
		-import-path=${GOPATH}/src/github.com \
		-import-path=$(PROTO_ROOT_DIR) \
		-import-path=${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway \
		-import-path=${GOPATH}/src/github.com/infobloxopen/protoc-gen-gorm/options/gorm.proto \
		-import-path=${GOPATH}/src/github.com/infobloxopen/atlas-app-toolkit/query/collection_operators.proto \
		-import-path=${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		-import-path=${GOPATH}/src/github.com/lyft/protoc-gen-validate \
		-plaintext 127.0.0.1:8081

# some funky stuff on how to install various chunks of func when there is no golang code in the repo?
# install:
# 	go install \
# 		./vendor/github.com/gogo/protobuf/protoc-gen-gogo \
# 		./vendor/github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway \
# 		./vendor/github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger \
# 		./vendor/github.com/mwitkow/go-proto-validators/protoc-gen-govalidators \
# 		./vendor/github.com/rakyll/statik		