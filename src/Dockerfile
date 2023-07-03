FROM python:latest

MAINTAINER Mouaz

COPY ./src /usr/src/app

RUN pip install -r /usr/src/app/requirements.txt

CMD ["flask", "--debug", "run", "--app", "src/app.py"]

