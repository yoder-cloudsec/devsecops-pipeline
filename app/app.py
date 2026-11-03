from flask import Flask, jsonify, request

app = Flask(__name__)


@app.get('/')
def index():
    return jsonify(message='supply-chain demo')


@app.get('/health')
def health():
    return jsonify(status='ok')


@app.get('/calc')
def calc():
    return jsonify(result=eval(request.args.get('expr', '0')))
