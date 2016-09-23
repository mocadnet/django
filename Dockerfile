#FROM phusion/baseimage:0.9.17
FROM python:2.7

MAINTAINER mocadnet <mocadnet@gmail.com>

ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
