from fastapi import FastAPI

app = FastAPI(docs_url=None, redoc_url=None, openapi_url=None)


@app.get("/")
def read_root():
    return {"Hello": "166"}