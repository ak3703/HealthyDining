from flask import Flask
from flask import render_template
import jinja2
from flask.ext.mysqldb import MySQL

app = Flask(__name__)
mysql = MySQL()
app.config['MYSQL_USER'] = 'it2216'
app.config['MYSQL_HOST'] = 'cs4111.caxmabhvo5cr.us-west-2.rds.amazonaws.com'
app.config['MYSQL_PASSWORD'] = 'kimtorras'
app.config['MYSQL_DB'] = 'cs4111'
mysql.init_app(app)


@app.route('/')
@app.route('/<search>')
def index(search=None):
	restaurants = mysql.connect.cursor()
	restaurants.execute("SELECT * FROM Restaurants;")
	resNames = restaurants.fetchall()

	zip_codes = mysql.connect.cursor()
	zip_codes.execute("SELECT DISTINCT zip FROM Addresses;")
	zip_codes = zip_codes.fetchall()

	reviews = [1.0, 2.0, 3.0, 4.0, 5.0]

	results = mysql.connect.cursor()
	results.execute("SELECT * FROM Restaurants WHERE r_id=\'%s\'" % search )

	return render_template('index.html', restaurants=resNames, zip_codes=zip_codes, reviews=reviews, results=results)


if __name__ == '__main__':
    app.run(debug='True')
