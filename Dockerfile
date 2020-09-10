FROM ubuntu:focal

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY . .

RUN cd /usr/src/app && \
    apt-get update && \
    apt-get -y install git python3 python3-pip shellcheck && \
    pip3 install pre-commit && \
    pre-commit install
RUN ls -l && pre-commit --version

CMD ["printenv"]
