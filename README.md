# My Project

## Описание

Этот проект включает три Docker-контейнера:
- **web**: Контейнер на базе Ubuntu с установленным PHP 8.2 и Apache.
- **mysql**: Контейнер с MySQL 5.7.
- **phpmyadmin**: Контейнер для управления базой данных через phpMyAdmin.

## Структура проекта
my_project/

├── app/

│ └── index.php

│ └── dump.sql

├── Dockerfile

└── docker-compose.yml

## Запуск контейнеров

1. Клонируйте репозиторий и перейдите в директорию проекта:

    ```sh
    git clone <repository_url>
    cd my_project
    ```

2. Запустите контейнеры:

    ```sh
    docker-compose up --build -d
    ```

   Это поднимет все необходимые контейнеры:
    - Приложение на PHP будет доступно по адресу `http://127.0.0.1:12035`.
    - phpMyAdmin будет доступен по адресу `http://127.0.0.1:8080`.

## Накатить дамп базы данных

1. Убедитесь, что файл `dump.sql` находится в директории `app`.

2. Выполните следующую команду для импорта данных из `dump.sql` в базу данных `app_db`:

    ```sh
    docker exec -i mysql57 mysql -u root -prootpassword app_db < ./app/dump.sql
    ```

   Эта команда выполнит импорт данных из файла `dump.sql` в базу данных `app_db`.

## Доступ к контейнерам

### Доступ к контейнеру с Ubuntu и PHP

Чтобы попасть внутрь контейнера с Ubuntu и PHP, используйте команду:

```sh
docker exec -it ubuntu_php /bin/bash
```

### Доступ к контейнеру с MySQL

Чтобы попасть внутрь контейнера с MySQL, используйте команду:

```sh
docker exec -it mysql57 mysql -u root -p
```

