from flask import Flask
from flask import render_template
from flask import request
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
	cuisines = mysql.connect.cursor()
	cuisines.execute("SELECT DISTINCT cuisine FROM Restaurants;")
	cuisines = cuisines.fetchall()

	zip_codes = mysql.connect.cursor()
	zip_codes.execute("SELECT DISTINCT zip FROM Addresses;")
	zip_codes = zip_codes.fetchall()

	reviews = [1.0, 2.0, 3.0, 4.0, 5.0]

	restaurant =  request.args.get('restaurant')
	cuisine =  request.args.get('cuisine')
	zipcode = request.args.get('zipcode')
	rating = request.args.get('rating')
	
	results = mysql.connect.cursor()
	results.execute("SELECT DISTINCT R.name, A.building_number, A.street_name, A.city, A.zip, R.cuisine, R.website_url, V.grade, V.violation_count FROM Addresses A, Restaurants R, ViolationSummaries V WHERE A.a_id = R.a_id AND V.r_id = R.r_id AND A.zip = \'" + zipcode + "\'")


	return render_template('index.html', cuisines=cuisines, zip_codes=zip_codes, reviews=reviews, results=results)


if __name__ == '__main__':
    app.run(debug='True')
