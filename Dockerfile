FROM golang:1.18.0-alpine3.15 AS builder

WORKDIR /go/src/app
COPY ./app/main.go .

RUN go mod init &&\
    go build -ldflags "-w"
    
ENTRYPOINT ["./app"]