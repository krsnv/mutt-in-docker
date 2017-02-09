FROM ubuntu:16.04

RUN locale-gen ru_RU.UTF-8

ENV LANG ru_RU.UTF-8
ENV LANGUAGE ru_RU:en
ENV LC_ALL ru_RU.UTF-8

ENV USER_NAME=""

RUN adduser --quiet \
            --disabled-password \
            --shell /bin/bash \
            --home /home/${USER_NAME} \
            ${USER_NAME} && \
            mkdir /home/${USER_NAME}/.mutt && \
            chown -R ${USER_NAME}:${USER_NAME} /home/${USER_NAME}/.mutt

RUN apt-get update
RUN apt-get install -y mutt


