FROM ubuntu

WORKDIR /app

COPY requirements.txt /app
COPY devops /app

RUN apt-get update && \
    apt-get  install -y python3 python3-pip && \
    pip install -r requirements.txt && \
    cd devops


ENDPOINT ["python3"]
CDM ["manage.py", "runserver", "0.0.0.0:8080"]
