import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, World! The database host is: {}".format(os.environ.get('DB_HOST'))

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
