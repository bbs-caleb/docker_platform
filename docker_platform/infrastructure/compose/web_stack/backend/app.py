from flask import Flask, jsonify

app = Flask(__name__)


@app.get("/api/health")
def health():
    return jsonify(status="ok", service="backend")


@app.get("/api/message")
def message():
    return jsonify(message="Hello from docker-platform-lab backend!")


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
