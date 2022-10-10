FROM python:3

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

COPY . /home/django

WORKDIR /home/django

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . /home/django