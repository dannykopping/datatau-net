#!/usr/bin/env bash
rm -rf app/migrations/000* accounts/migrations/000*
python manage.py makemigrations dev
python manage.py migrate dev
python manage.py runserver 0.0.0.0:80 dev
