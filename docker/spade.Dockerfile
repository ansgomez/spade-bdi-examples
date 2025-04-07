FROM --platform=linux/amd64 python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN apt-get update && \
    apt-get install -y git vim && \
    apt-get clean

# Install SPADE and compatible dependencies
RUN pip install --no-cache-dir spade==4.0.1 
