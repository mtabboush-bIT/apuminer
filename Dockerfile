FROM python:latest

MAINTAINER Mouaz

# cp ignore
COPY ./src .

RUN pip install -r requirements.txt

CMD ["flask", "run", "--debug"]

