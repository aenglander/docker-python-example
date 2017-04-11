"""
This is taken directly from the Flask home page for version 0.12. Any changes to the default hello world app
other than whitespace for PEP-8 compliance are commented for clarity.
"""
from flask import Flask
from os import getenv

app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello World!"


if __name__ == "__main__":
    app.run(
        host=getenv('HOST'),  # If HOST set in ENV use it otherwise None so it falls back to Flask default
        port=getenv('PORT')  # If PORT set in ENV use it otherwise None so it falls back to Flask default
    )
