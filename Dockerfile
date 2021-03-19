FROM python:3.7-slim-buster

USER root

WORKDIR /app

ADD . /app

#RUN apk --no-cache add musl-dev linux-headers g++

RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 8050

ENV NAME World

CMD ["python", "app/app.py"]
