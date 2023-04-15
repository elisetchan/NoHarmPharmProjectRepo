from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


pharmacists = Blueprint('pharmacists', __name__)

# Get all customers from the DB
@pharmacists.route('/pharmacists', methods=['GET'])
def get_customers():
    cursor = db.get_db().cursor()
    cursor.execute('select company, last_name,\
        first_name, job_title, business_phone from customers')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get customer detail for customer with particular userID
@pharmacists.route('/pharmacists/<userID>', methods=['GET'])
def get_customer(userID):
    cursor = db.get_db().cursor()
    cursor.execute('select * from customers where id = {0}'.format(userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Add drug to a patient's list of drugs
@pharmacists.route('/patients/<userID>/drugs', methods=['GET', 'POST', 'DELETE'])
def post_patients_drugs(userID):
    if request.method == 'GET':
        cursor = db.get_db().cursor()
        cursor.execute('select * from patients where id = {0}'.format(userID))
    elif request.method == 'POST':
        the_data = request.json
        current_app.logger.info(the_data)
        return 'Success'
