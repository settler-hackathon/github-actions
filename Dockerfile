# syntax=docker/dockerfile:1
ARG PYTHON_VERSION=3.9
ARG ENV=dev

FROM python:$PYTHON_VERSION-slim-buster

WORKDIR /github-actions

COPY requirements-dev.txt requirements-dev.txt
COPY requirements.txt requirements.txt

RUN if [ "$ENV" = "prod" ] ; then pip3 install -r requirements.txt ; else  pip3 install -r requirements-dev.txt ; fi
COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]