from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Welcome to the vulnerable Flask app!"

# Simulated vulnerability: Exposing sensitive info in response
@app.route("/vulnerable")
def vulnerable():
    return "User: admin | Password: 1234"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
