
helloworld-gen-proto:
	mkdir -p ./helloworld/helloworldpb
	protoc --go_out=. --go_opt=module=github.com/viktor-titov/grpc-example \
		--go-grpc_out=. --go-grpc_opt=module=github.com/viktor-titov/grpc-example \
		./helloworld/proto/helloworld.proto