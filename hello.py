import time
import instana
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!"


@app.route("/time")
def time_sleep():
    time.sleep(3)
    return "Hello World!, time"
