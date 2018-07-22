FROM golang:1.8

WORKDIR /go/src/github.com/alaypatel07/tracer
COPY . .

RUN go get -u github.com/golang/dep/cmd/dep
RUN go get -d -v ./...
RUN dep ensure -v
RUN go install -v ./...

CMD ["tracer"]
