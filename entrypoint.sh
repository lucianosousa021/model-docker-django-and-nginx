#!/bin/sh

python manage.py migrate --no-input
python manage.py collectstatic --no-input

gunicorn project_test.wsgi:application --bind 0.0.0.0:${GUNICORNPORT}