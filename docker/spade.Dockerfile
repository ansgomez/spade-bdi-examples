FROM --platform=linux/amd64 python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN apt-get update && \
    apt-get install -y git vim && \
    apt-get clean

COPY docker/requirements.txt .

# Install dependencies directly 
RUN pip install --upgrade pip && \
    pip install -r requirements.txt