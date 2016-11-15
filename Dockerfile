FROM alpine:3.4

ENTRYPOINT ["/private_s3_httpd"]
EXPOSE 8080

RUN apk add --no-cache ca-certificates && \
    update-ca-certificates

ADD bin/private_s3_httpd /private_s3_httpd
