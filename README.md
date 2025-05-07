# FashionShop - Интернет-магазин одежды

Полнофункциональный интернет-магазин одежды на Django с PostgreSQL.

## Функциональность

- Авторизация и регистрация пользователей
- Каталог товаров с фильтрацией и поиском
- Корзина покупок
- Оформление заказов
- Личный кабинет пользователя
- Административная панель управления товарами и заказами

## Технологии

- Django 4.2
- PostgreSQL
- Bootstrap 5
- jQuery
- Docker & Docker Compose

## Установка и запуск с использованием Docker

1. Клонировать репозиторий:
git clone https://github.com/yourusername/fashion-shop.git
cd fashion-shop

2. Создать файл `.env` в корневой директории на основе `.env.example`:
cp .env.example .env

3. Настроить переменные окружения в файле `.env`.

4. Запустить проект с помощью Docker Compose:
docker-compose up -d --build

5. Создать суперпользователя:
docker-compose exec web python manage.py createsuperuser

6. Приложение будет доступно по адресу: http://localhost:8000
Административная панель: http://localhost:8000/admin/

## Запуск без Docker

1. Клонировать репозиторий:
git clone https://github.com/yourusername/fashion-shop.git
cd fashion-shop

2. Создать виртуальное окружение Python и активировать его:
python -m venv venv
source venv/bin/activate  # на Windows: venv\Scripts\activate

3. Установить зависимости:
pip install -r requirements.txt

4. Создать файл `.env` в корневой директории с нужными переменными окружения.

5. Применить миграции:
python manage.py migrate

6. Создать суперпользователя:
python manage.py createsuperuser

7. Запустить сервер:
python manage.py runserver

8. Приложение будет доступно по адресу: http://localhost:8000

## API документация

Для работы с API доступны следующие эндпоинты:

- `GET /api/products/` - Получение списка всех товаров
- `GET /api/products/{id}/` - Получение информации о конкретном товаре
- `GET /api/categories/` - Получение списка категорий
- `POST /api/cart/add/` - Добавление товара в корзину
- `GET /api/cart/` - Получение содержимого корзины
- `POST /api/orders/create/` - Создание заказа

## Тестирование

Для запуска тестов используйте команду:

python manage.py test

## Скриншоты

![Главная страница](screenshots/home.jpg)
![Каталог товаров](screenshots/catalog.jpg)
![Корзина](screenshots/cart.jpg)
