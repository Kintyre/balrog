FROM ubuntu:bionic

RUN apt-get update && \
    apt-get -y install python3 python3-pip && \
    pip3 install pre-commit && \
    pre-commit install
COPY . .
RUN ls -l && pre-commit --version

CMD ["printenv"]
