FROM ubuntu:latest

WORKDIR /app

RUN apt-get update -y && \
    apt-get install -y python3-pip python3

COPY . /app

EXPOSE 5000

RUN pip3 install -r requirements.txt

CMD flask run --host=0.0.0.0 --port=8080
