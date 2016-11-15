build:
	docker run --rm -v "${PWD}":/go/src/private_s3_httpd -w /go/src/private_s3_httpd golang:1.7-alpine go build -o bin/private_s3_httpd
	
dockerize:
	docker -t registry.devops.connectedfleet.io:private_s3_httpd .
