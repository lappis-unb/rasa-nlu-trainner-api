#! /bin/bash

cd /src
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py shell < populate_models.py
python3 manage.py runserver 0.0.0.0:8000