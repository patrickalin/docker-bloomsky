FROM golang:1.8.3
RUN wget http://github.com/patrickalin/bloomsky-client-go/releases/download/v0.91/config.yaml
RUN wget http://github.com/patrickalin/bloomsky-client-go/releases/download/v0.91/goBloomsky-linux-amd64.bin
RUN chmod +x /goBloomsky-linux-amd64.bin
ENTRYPOINT /goBloomsky-linux-amd64.bin
