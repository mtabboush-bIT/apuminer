FROM python:latest

MAINTAINER Mouaz

# cp ignore
COPY ./src /usr/src/app

RUN pip install -r /usr/src/app/requirements.txt

CMD ["flask", "--debug", "run", "--app", "src/app.py"]

