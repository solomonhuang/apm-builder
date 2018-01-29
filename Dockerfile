FROM i386/debian:7-slim
LABEL maintainer="kaichanh@gmail.com"

RUN apt-get -qq update && apt-get install -y build-essential flex bison lzma \
    sharutils exuberant-ctags libncurses5-dev gengetopt python gettext texinfo \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN adduser --disabled-password --gecos builder builder
USER builder


