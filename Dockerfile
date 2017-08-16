FROM ubuntu:17.10
RUN apt-get update
RUN apt-get -y  install wget
RUN wget http://github.com/patrickalin/bloomsky-client-go/releases/download/v1.12/config.yaml
RUN wget http://github.com/patrickalin/bloomsky-client-go/releases/download/v1.12/goBloomsky-linux-amd64.bin
RUN chmod +x /goBloomsky-linux-amd64.bin
ENTRYPOINT /goBloomsky-linux-amd64.bin
