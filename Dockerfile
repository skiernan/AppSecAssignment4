FROM ubuntu:latest

WORKDIR /app

RUN apt-get update -y && \
    apt-get install -y python3-pip python3

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
ENV LANGUAGE=C.UTF-8

COPY . /app

EXPOSE 5000

RUN pip3 install -r requirements.txt

CMD flask run --host=0.0.0.0 --port=8080
