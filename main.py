from fastapi import FastAPI
from fastapi.responses import HTMLResponse
from fastapi.staticfiles import StaticFiles

app = FastAPI()

app.mount("/static", StaticFiles(directory="static"), name="static")


@app.get("/{_:path}")
async def catch_all(_: str):
    with open("index.html") as f:
        html = f.read()
        return HTMLResponse(content=html)
