FROM python:3
# set work directory
WORKDIR /app
EXPOSE 8000
# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# install dependencies
RUN pip install --upgrade pip
ADD ./app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
