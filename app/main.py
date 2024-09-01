"""App entrypoints."""

from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root() -> dict:
    """Return hello world.

    Returns
    -------
    dict
        Hello world as a key value pair.
    """
    return {"Hello": "World"}
