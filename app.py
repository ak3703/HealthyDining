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

	ratings = [2.0, 3.0, 4.0, 5.0]

	restaurant =  request.args.get('restaurant')
	cuisine =  request.args.get('cuisine')
	zipcode = request.args.get('zipcode')
	rating = request.args.get('rating')
	results = mysql.connect.cursor()

	if cuisine == "All":
		cuisine = None
	if rating == "All":
		rating = None
	if zipcode == "All":
		zipcode = None

	if zipcode and cuisine:
		results.execute("SELECT DISTINCT R.r_id, R.name, A.building_number, A.street_name, A.city, A.zip, R.cuisine, R.website_url FROM Addresses A, Restaurants R WHERE A.a_id = R.a_id AND R.cuisine=\'" + cuisine + " \' AND A.zip = \'" + zipcode + "\'")
	elif cuisine:
		results.execute("SELECT DISTINCT R.r_id, R.name, A.building_number, A.street_name, A.city, A.zip, R.cuisine, R.website_url FROM Addresses A, Restaurants R WHERE A.a_id = R.a_id AND R.cuisine = \'" + cuisine + "\'")
	elif zipcode:
		results.execute("SELECT DISTINCT R.r_id, R.name, A.building_number, A.street_name, A.city, A.zip, R.cuisine, R.website_url FROM Addresses A, Restaurants R WHERE A.a_id = R.a_id AND A.zip = \'" + zipcode + "\'")
	else:
		results.execute("SELECT DISTINCT R.r_id, R.name, A.building_number, A.street_name, A.city, A.zip, R.cuisine, R.website_url FROM Addresses A, Restaurants R WHERE A.a_id = R.a_id")

	reviews = mysql.connect.cursor()
	reviews.execute("SELECT R.u_id, R.date_reviewed, R.comment, R.rating, R.r_id FROM Reviews R")
	reviews = reviews.fetchall()

	violations = mysql.connect.cursor()
	violations.execute("SELECT date_inspected, violation_count, grade, r_id, v_id FROM ViolationSummaries")	
	violations = violations.fetchall()
	
	reviewers = mysql.connect.cursor()
	reviewers.execute("SELECT name, review_count, average_rating, u_id FROM Reviewers")
	reviewers = reviewers.fetchall()
	
	violation_details = mysql.connect.cursor()
	violation_details.execute("SELECT violation_detail, critical, v_id FROM Violations")
	violation_details = violation_details.fetchall()

	final_results = []
	for result in results:
		current_restaurant = {}
		address = (str(result[2])+" "+result[3]+" "+result[4]+" "+str(result[5])).replace("None","")
		restaurant_id = str(result[0])
		review_array = []
		rating_array = []
		for review in reviews:
			if restaurant_id == str(review[4]):
				rating_array.append(review[3])
				current_review = []
				user_id = str(review[0])
				date = review[1].strftime("%Y/%m/%d")
				for reviewer in reviewers:
					if user_id == str(reviewer[3]):
						review_array.append([reviewer[0],date,review[3],review[2],reviewer[1],reviewer[2]])
		average_rating = sum(rating_array)/len(rating_array)
		if rating:
			if float(average_rating) < float(rating):
				continue
		current_restaurant["basic_info"] = [result[1], address, result[6], result[7], str(average_rating)]
		current_restaurant["reviews"] = review_array
		violation_array = []
		for violation in violations:
			if restaurant_id == str(violation[3]):
				date = violation[0].strftime("%Y/%m/%d")
				violation_detail_array = []
				for violation_detail in violation_details:
					if str(violation[4]) == str(violation_detail[2]):
						if violation_detail[1] == 1:
							critical = "True"
						else:
							critical = "False"
						violation_detail_array.append([violation_detail[0],critical])
				violation_array.append([date,violation[1],violation[2],violation_detail_array])
		current_restaurant["violations"] = violation_array
		final_results.append(current_restaurant)

	#format for each result is
	#["basic_info"] = [r_name, address, cuisine, web_url, avg_rating for restaurant]
	#["reviews"] = [[u_name,r_date,rating,comment,user_rating_count,user_rating_avg].[]] Array of arrays each array being one review
	#["violations"] = [[date,violation_count,grade],[]] Array of arrays each array being one summary

	if rating == None:
		rating == "All"
	else:
		rating = float(rating)
	if zipcode == None:
		zipcode == "All"
	else:
		zipcode = long(zipcode)

	return render_template('index.html', cuisines=cuisines, zip_codes=zip_codes, ratings=ratings, results=final_results,
			chosen_cuisine=cuisine, chosen_zip=zipcode, chosen_rating=rating)


if __name__ == '__main__':
    app.run(debug='True')
