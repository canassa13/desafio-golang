FROM golang:1.16 AS builder

WORKDIR /usr/src/app

COPY full-cycle.go .

RUN go build full-cycle.go

FROM scratch

COPY --from=builder /usr/src/app/full-cycle .

CMD ["./full-cycle"]
