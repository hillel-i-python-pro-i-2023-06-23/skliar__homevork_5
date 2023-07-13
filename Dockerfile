FROM python:3.11

MAINTAINER Nick Skliar 'nikoladarkangel@gmail.com'

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN apt update && apt upgrade -y

RUN pip install --upgrade pip && \
    pip install --requirement requirements.txt

COPY . .

CMD ["python", "main.py"]

