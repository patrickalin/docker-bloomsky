FROM alpine:3.6
RUN apk update
RUN apk add ca-certificates
RUN update-ca-certificates
RUN apk add openssl
RUN wget http://github.com/patrickalin/bloomsky-client-go/releases/download/v0.91/config.yaml
RUN wget http://github.com/patrickalin/bloomsky-client-go/releases/download/v0.91/goBloomsky-linux-amd64.bin
RUN chmod +x /goBloomsky-linux-amd64.bin
ENTRYPOINT /goBloomsky-linux-amd64.bin
