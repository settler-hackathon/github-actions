# save this as app.py
from flask import Flask
from datatetime import datetime

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello, World!"