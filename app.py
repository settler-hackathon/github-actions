# save this as app.py
from datetime import datetime

from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello, World!"