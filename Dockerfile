FROM golang:stretch

RUN apt-get update && \
    apt-get -y install git unzip build-essential autoconf libtool

ENV PROTOC_ZIP protoc-3.11.4-linux-x86_64.zip
RUN curl -OL https://github.com/protocolbuffers/protobuf/releases/download/v3.11.4/$PROTOC_ZIP
RUN unzip -o $PROTOC_ZIP -d /usr/local bin/protoc
RUN unzip -o $PROTOC_ZIP -d /usr/local 'include/*'
RUN rm -f $PROTOC_ZIP

# NOTE: for now, this docker image always builds the current HEAD version of
# gRPC.  After gRPC's beta release, the Dockerfile versions will be updated to
# build a specific version.

RUN go get google.golang.org/grpc
RUN go get github.com/golang/protobuf/protoc-gen-go

RUN cp /go/bin/protoc-gen-go /usr/bin/
RUN protoc --version

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["sh", "/entrypoint.sh"]
