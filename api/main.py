from fastapi import FastAPI
from router import url

app = FastAPI()
app.include_router(url.router)

