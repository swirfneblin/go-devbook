# Stage 1: Build the Golang application binary
FROM arm64v8/golang:1.19-buster AS builder
WORKDIR /go/src/app
COPY ./app /go/src/app
RUN go build -o myapp

# Stage 2: Create a minimal runtime image
FROM arm64v8/alpine:buster
WORKDIR /app
COPY --from=builder /go/src/app/myapp /app/
# CMD ["./myapp"]
CMD ["tail", "-f", "/dev/null"]
