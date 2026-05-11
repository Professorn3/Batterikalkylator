from flask import Flask, render_template
import os

app = Flask(__name__, template_folder='.')

@app.route('/')
def home():
    # Detta letar efter bat.html i samma mapp
    return render_template('bat.html')

if __name__ == '__main__':
    # Port 5000 är standard för Flask
    app.run(host='0.0.0.0', port=5000)
