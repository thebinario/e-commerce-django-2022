FROM python:3.9-alpine

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

RUN python -m pip install --upgrade pip
RUN apk add python3-dev build-base linux-headers pcre-dev
RUN pip install uwsgi
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["uwsgi", "--ini", "/code/mysite.uwsgi.ini"]