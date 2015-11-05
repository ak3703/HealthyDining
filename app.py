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
from flaskext.mysql import MySQL


mysql = MySQL()
app = Flask(__name__)
app.config['MYSQL_DATABASE_USER'] = 'it2216'
app.config['MYSQL_DATABASE_HOST'] = 'cs4111.caxmabhvo5cr.us-west-2.rds.amazonaws.com'
app.config['MYSQL_DATABASE_PORT'] = '3306'
app.config['MYSQL_DATABASE_PASSWORD'] = 'kimtorras'
app.config['MYSQL_DATABASE_DB'] = 'cs4111'
mysql.init_app(app)
cursor = mysql.get_db().cursor()
sql = "SHOW TABLES;"
cursor.execute(sql)
response = cursor.fetchall()

for row in response:
    print row[0]


@app.route('/')
def index():
    return render_template('index.html')


if __name__ == '__main__':
    app.run()
