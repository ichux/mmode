FROM 3.10-slim-buster

ENV PATH="/opt/venv/bin:$PATH"
ENV LANG C.UTF-8

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf


ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]
