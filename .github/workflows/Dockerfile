# Используем базовый образ Golang
FROM golang:1.22.5

# Указываем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем go.mod и go.sum и устанавливаем зависимости
COPY go.mod go.sum ./
RUN go mod download

# Копируем все исходные файлы проекта
COPY . .

# Собираем приложение
RUN go build -o app main.go

# Команда для запуска приложения
CMD ["./app"]
