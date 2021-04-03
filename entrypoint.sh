#!/bin/sh

python manage.py migrate --no-input
python manage.py collectstatic  --no-input  # collects all the static files to the volume

gunicorn simple_website.wsgi:application --bind 0.0.0.0:8000