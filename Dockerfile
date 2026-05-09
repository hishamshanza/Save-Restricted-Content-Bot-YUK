FROM python:3.11-slim-buster

WORKDIR /app

RUN apt-get update && apt-get upgrade -y

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD gunicorn app:app & python3 bot.py
