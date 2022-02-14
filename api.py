from fastapi import FastAPI
from src.main import return_name

app = FastAPI()


@app.get("/")
def root():
    return {"Application": "Test FastAPI"}


@app.get("/predict")
def predict():
    return {"Prediction": [0.5, 0.5]}


@app.get("/name")
def name():
    return return_name
