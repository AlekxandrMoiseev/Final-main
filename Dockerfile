# Используем базовый образ Golang
FROM golang:1.22.5

WORKDIR /app

COPY . . 

RUN go mod download

COPY . . 

RUN go build  -o my_app .

CMD ["./my_app"]