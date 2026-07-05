from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Flask app running via GitHub Packages!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
