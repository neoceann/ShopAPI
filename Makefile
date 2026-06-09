# Makefile
.PHONY: proto

AUTH_DIR=./auth-service

proto:
#	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
#	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
	
	protoc --go_out=$(AUTH_DIR) --go_opt=module=auth-service \
	       --go-grpc_out=$(AUTH_DIR) --go-grpc_opt=module=auth-service \
	       $(AUTH_DIR)/proto/auth.proto
	
clean:
	rm -rf internal/grpc/pb/*.go