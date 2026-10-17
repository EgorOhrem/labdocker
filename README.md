# Lab 4 — Docker образ с nginx и PostgreSQL

## Состав образа
- Ubuntu 22.04 (базовая ОС)
- nginx (веб-сервер)
- PostgreSQL 14 (СУБД)

## Сборка
docker build -t lab4-app:1.0 .

## Запуск
docker run -d --name lab4-container -p 8080:80 -p 5432:5432 lab4-app:1.0

## Источники образов
- https://hub.docker.com/_/ubuntu
- https://hub.docker.com/_/nginx
- https://hub.docker.com/_/postgres