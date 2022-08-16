from flask import *
app = Flask('demo')
@app.route('/')
def home():
    return render_template('abc.html');
@app.route('/hello',methods =['POST','GET'])
def hello():
    name = request.form['t']
    return "Welcome" + name

app.run(debug = True)
