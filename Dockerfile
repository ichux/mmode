FROM --platform=linux/amd64 python:3.10.7-slim-bullseye

# Set maintainer
LABEL description='Image for Maintenance mode app'
LABEL maintainer='Chukwudi Nwachukwu (iChux), <chukwudi.nwachukwu@ng.airtel.com>'

ENV PATH="/opt/venv/bin:$PATH"
ENV LANG C.UTF-8

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf


ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]
