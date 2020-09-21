FROM python:3-slim

RUN apt-get -y update && apt-get -y dist-upgrade
RUN pip install pipenv
WORKDIR /igbot
ADD . .
RUN pipenv install --system
RUN PATH = $PATH:/igbot
