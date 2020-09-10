FROM ubuntu:bionic

RUN apt-get update && \
    apt-get install python3 python3-pip && \
    pip install pre-commit && \
    pre-commit install
COPY . .
RUN ls -l && pre-commit --version

CMD ["printenv"]
