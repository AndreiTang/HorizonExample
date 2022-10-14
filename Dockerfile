FROM golang:1.19-alpine

WORKDIR /app
RUN go env -w GO111MODULE=on
COPY go.mod ./
COPY go.sum ./
RUN go mod download

ADD ./ ./

RUN go build -o /docker-go-horizonexample

EXPOSE 8088

CMD [ "/docker-go-horizonexample" ]