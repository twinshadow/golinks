FROM golang:alpine

EXPOSE 80/tcp

ENTRYPOINT ["golinks"]

RUN \
    apk add --update git && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /go/src/golinks
WORKDIR /go/src/golinks

COPY . /go/src/golinks

RUN go get -v -d
RUN go install -v
