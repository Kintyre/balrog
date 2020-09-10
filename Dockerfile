FROM ubuntu:zesty

RUN pip install pre-commit && pre-commit install
COPY . .
RUN ls -l && pre-commit --version

CMD ["printenv"]
