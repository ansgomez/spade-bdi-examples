FROM python:3.9-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN apt-get update && \
    apt-get install -y git vim && \
    apt-get clean

COPY requirements.txt .

# Install dependencies directly 
RUN pip install --upgrade pip && \
    pip install -r requirements.txt
    
# Install SPADE-BDI
RUN pip install --no-cache-dir spade-bdi
