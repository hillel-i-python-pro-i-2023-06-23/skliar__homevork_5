FROM python:3.11

MAINTAINER Nick Skliar 'nikoladarkangel@gmail.com'

ARG WORKDIR=/usr/src/app
ARG USER=user

WORKDIR ${WORKDIR}

RUN useradd --system ${USER} && \
    chown --recursive ${USER} ${WORKDIR}

RUN apt update && apt upgrade -y

COPY --chown=${USER} requirements.txt requirements.txt

RUN pip install --upgrade pip && \
    pip install --requirement requirements.txt

COPY --chown=${USER} ./main.py main.py
#COPY --chown=${USER} . .    #скопировать все файлы проекта в докер
#COPY --chown=${USER} ./app app    # скопировать только файлы которые работают, но у меня их пока нет

USER ${USER}

ENTRYPOINT ["python", "main.py"]
