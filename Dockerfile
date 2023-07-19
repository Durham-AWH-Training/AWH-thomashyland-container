# syntax=docker/dockerfile:1.4
# Using https://github.com/docker/awesome-compose/tree/master/flask
FROM python:3.10-alpine

WORKDIR /app

COPY requirements.txt /app
RUN --mount=type=cache,target=/root/.cache/pip \
    pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT ["python3"]
CMD ["app.py"]

