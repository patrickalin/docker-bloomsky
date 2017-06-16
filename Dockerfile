FROM alpine:3.6
RUN wget https://github.com/patrickalin/bloomsky-client-go/releases/download/v0.9/config.yaml
RUN wget https://github.com/patrickalin/bloomsky-client-go/releases/download/v0.9/goBloomsky-linux-amd64.bin
ENTRYPOINT goBloomsky-linux-amd64.bin
