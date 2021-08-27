FROM python:3.8.11-bullseye

ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

WORKDIR /app

COPY ./django/requirements.txt /app
RUN pip install -r requirements.txt

COPY ./django /app

COPY ./entrypoint.sh /
ENTRYPOINT [ "sh", "/entrypoint.sh" ]