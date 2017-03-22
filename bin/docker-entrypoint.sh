#!/bin/bash
# export PATH=$PATH:~/.local/bin
# ./bin/getconfig.sh
# python manage.py migrate --noinput
# python manage.py collectstatic --noinput
# gunicorn homelessAPI.wsgi:application -b :8000


cp /code/transDjango/transDjango/settings_local_example.py /code/transDjango/transDjango/settings_local.py
/code/transDjango/manage.py migrate
/code/transDjango/manage.py import_jsons
/code/transDjango/manage.py jsonToCIPPoints
/code/transDjango/manage.py jsonToCIPLines
/code/transDjango/manage.py jsonToCIPPolygons
#./manage.py runserver
/code/transDjango/manage.py runserver 0.0.0.0:8000
