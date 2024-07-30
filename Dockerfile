FROM golang:1.22.5-alpine3.20

RUN go install tailscale.com/cmd/derper@latest

ENTRYPOINT ["/go/bin/derper"]