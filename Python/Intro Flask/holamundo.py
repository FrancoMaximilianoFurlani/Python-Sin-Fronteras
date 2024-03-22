from flask import Flask

app = Flask(__name__)

@app.route('/')
def hola():
    return 'Hello, World!'

@app.route('/lala /<usuario>')
def lala():
    return 'lala'

app.run()