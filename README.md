# Maintenance Mode App

Informative message when bringing down web services.

## Setup
Assumptions made:
- You have docker or python3 installed on your system
- You're at the root of the project directory

### With Docker
```shell
docker build -t mmode .
docker run -p 8000:8000 mmode
```

### Without Docker
```shell
pip install -r requirements.txt
uvicorn main:app
```
