
proto:
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway \
		-I${GOPATH}/src/github.com/infobloxopen/protoc-gen-gorm/options/gorm.proto \
		-I${GOPATH}/src/github.com/infobloxopen/atlas-app-toolkit/query/collection_operators.proto \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		-I${GOPATH}/src/github.com/lyft/protoc-gen-validate \
		--gorm_out=. \
		folio.proto
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway \
		-I${GOPATH}/src/github.com/infobloxopen/protoc-gen-gorm/options/gorm.proto \
		-I${GOPATH}/src/github.com/infobloxopen/atlas-app-toolkit/query/collection_operators.proto \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		-I${GOPATH}/src/github.com/lyft/protoc-gen-validate \
		--go_out=plugins=grpc:. \
		folio.proto
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway \
		-I${GOPATH}/src/github.com/infobloxopen/protoc-gen-gorm/options/gorm.proto \
		-I${GOPATH}/src/github.com/infobloxopen/atlas-app-toolkit/query/collection_operators.proto \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		-I${GOPATH}/src/github.com/lyft/protoc-gen-validate \
		--grpc-gateway_out=logtostderr=true:. \
		folio.proto
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway \
		-I${GOPATH}/src/github.com/infobloxopen/protoc-gen-gorm/options/gorm.proto \
		-I${GOPATH}/src/github.com/infobloxopen/atlas-app-toolkit/query/collection_operators.proto \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		-I${GOPATH}/src/github.com/lyft/protoc-gen-validate \
		--swagger_out=logtostderr=true:. \
		folio.proto
	
	protoc -I/usr/local/include -I. \
		-I${GOPATH}/src \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway \
		-I${GOPATH}/src/github.com/infobloxopen/protoc-gen-gorm/options/gorm.proto \
		-I${GOPATH}/src/github.com/infobloxopen/atlas-app-toolkit/query/collection_operators.proto \
		-I${GOPATH}/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis \
		-I${GOPATH}/src/github.com/lyft/protoc-gen-validate \
		--validate_out="lang=go:." \
		folio.proto

# some funky stuff on how to install various chunks of func when there is no golanf code in the repo?
# install:
# 	go install \
# 		./vendor/github.com/gogo/protobuf/protoc-gen-gogo \
# 		./vendor/github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway \
# 		./vendor/github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger \
# 		./vendor/github.com/mwitkow/go-proto-validators/protoc-gen-govalidators \
# 		./vendor/github.com/rakyll/statik		