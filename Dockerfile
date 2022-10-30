FROM python:3.8.5-alpine

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./hw_app /app

WORKDIR /app

RUN python manage.py migrate

