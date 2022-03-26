FROM golang:1.16-alpine

WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY ./src/be_api/*.go ./
RUN go build  -o /be_api
EXPOSE 5000
CMD [ "/be_api" ]
