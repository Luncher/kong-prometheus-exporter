# Start from a Debian image with the latest version of Go installed
# and a workspace (GOPATH) configured at /go.
FROM golang
WORKDIR /go/src/ytx/kong-prometheus
ADD . .
RUN go get -d
RUN go install ytx/kong-prometheus

ENTRYPOINT /go/bin/kong-prometheus

EXPOSE 8080