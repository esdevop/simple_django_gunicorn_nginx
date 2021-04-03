FROM python:3.9.3-alpine3.12

RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app

COPY ./simple_website /app
COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]