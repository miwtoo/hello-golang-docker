FROM golang:1.14-alpine as builder

WORKDIR /app

COPY go.* ./
RUN go mod download

COPY . .

RUN go build -o goapp main.go

# --------------------------------------------------------------

FROM alpine:latest

WORKDIR /app

COPY --from=builder /app/goapp /app/

CMD ["./goapp"]