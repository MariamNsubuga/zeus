#!/bin/bash

export PYTHONPATH=`pwd`
export DJANGO_SETTINGS_MODULE=settings;
for d in zeus helios heliosauth server_ui; do
  cd $d;
  django-admin makemessages -l el -e .html -e .txt;
  #django-admin makemessages -l en -e .html -e .txt;
  cd ..;
done;

python manage.py makeboothmessages -l en -l el -e .html -e .js;
