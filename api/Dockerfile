#
# Build Stage
#
FROM python:3 as builder
USER root

RUN apt-get update
RUN apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8

COPY --link api/Makefile api/requirements.txt /app/api/

WORKDIR /app/api
COPY --link ./api/ .

RUN pip install -r requirements.txt