FROM golang:1.20rc1-alpine3.17

WORKDIR /home/hub

COPY go.mod go.sum ./
RUN go mod download

COPY . .