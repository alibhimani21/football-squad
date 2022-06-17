FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /football-squad

COPY Pipfile Pipfile.lock /football-squad/
RUN pip install pipenv && pipenv install --system

COPY . /football-squad/