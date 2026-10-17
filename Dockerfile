FROM ubuntu:latest
LABEL authors="egoro"

ENTRYPOINT ["top", "-b"]

# Базовая операционная система
FROM ubuntu:22.04

# Переменные окружения для неинтерактивной установки
ENV DEBIAN_FRONTEND=noninteractive

# Установка веб-сервера (nginx), СУБД (PostgreSQL) и утилит
RUN apt-get update && apt-get install -y \
        nginx \
        postgresql \
        postgresql-contrib \
        curl \
        && rm -rf /var/lib/apt/lists/*

# Копирование страницы веб-сервера
COPY app/index.html /var/www/html/index.html

# Открытие портов: 80 — nginx, 5432 — PostgreSQL
EXPOSE 80 5432

# Запуск сервисов
CMD service postgresql start && nginx -g "daemon off;"