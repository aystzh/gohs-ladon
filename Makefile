
all:

dockerfile:
	docker build -f Dockerfile -t zhanghuan0601/gohs-service:0.0.1 .

dev:
	docker run --rm -p 19775:8080 -v $(PWD):/go/src/gohs-ladon -ti zhanghuan0601/gohs-service:latest /bin/bash

build:
	docker run --rm -v $(PWD):/go/src/gohs-ladon -ti zhanghuan0601/gohs-service:latest sh -c "cd /go/src/gohs-ladon && go build"

test:
	docker run --rm -v $(PWD):/go/src/gohs-ladon -ti zhanghuan0601/gohs-service:latest sh -c "cd /go/src/gohs-ladon && go test"
