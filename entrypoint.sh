#!/bin/bash

# Дожидаемся запуска PostgreSQL
echo "Waiting for PostgreSQL..."

while ! nc -z $DB_HOST $DB_PORT; do
  sleep 0.1
done

echo "PostgreSQL started"

# Запускаем команды Django
python manage.py collectstatic --noinput
python manage.py migrate

# Запускаем gunicorn
exec "$@"
