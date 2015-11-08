'''#!/usr/bin/python
import MySQLdb

# connect
db = MySQLdb.connect(host="localhost", user="ak3703", passwd="password",
	db="cs4111")

cursor = db.cursor()
sql = "SHOW TABLES;"

cursor.execute(sql)
response = cursor.fetchall()

for row in response:
    print row[0]
'''


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
def index():
	conn = mysql.connect
	cursor = mysql.connect.cursor()
	cursor.execute("SHOW TABLES;")
	rv = cursor.fetchall()
	print rv
	return render_template('index.html')


if __name__ == '__main__':
    app.run(debug='True')
