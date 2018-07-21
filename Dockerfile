FROM golang:1.8

WORKDIR /go/src/github.com/alaypatel07/tracer
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["tracer"]
