FROM ubuntu:zesty

RUN apt-get install python3 python3-pip && \
    pip install pre-commit && \
    pre-commit install
COPY . .
RUN ls -l && pre-commit --version

CMD ["printenv"]
