#!/bin/sh

pipenv shell
python manage.py migrate --noinput

exec "$@"