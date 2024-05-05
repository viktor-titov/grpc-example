package main

import (
	"flag"

	pb "github.com/viktor-titov/grpc-example/hellowrold/helloworldpb"
)

var (
	port = flag.Int("port", 50051, "The server port")
)

type server struct {
	pb.Un
}
