FROM 3.10-slim-buster

# ENV PATH="/opt/venv/bin:$PATH"
ENV LANG C.UTF-8

WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]
