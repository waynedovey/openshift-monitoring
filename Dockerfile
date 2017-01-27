FROM golang:1.7.4-wheezy

WORKDIR /go/src/github.com/SchweizerischeBundesbahnen/openshift-monitoring/deamon/

COPY . /go/src/github.com/SchweizerischeBundesbahnen/openshift-monitoring/

RUN go get github.com/cenkalti/rpc2
RUN go get github.com/gorilla/websocket
RUN go get github.com/mitchellh/mapstructure

RUN go install -v

CMD ["app"]