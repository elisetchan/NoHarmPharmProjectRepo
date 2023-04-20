from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


pharmacists = Blueprint('pharmacists', __name__)

# Get pharmacist detail for a specific pharmacist with their email
@pharmacists.route('/pharmacists/<userID>', methods=['GET'])
def get_customer(userID):
    cursor = db.get_db().cursor()
    cursor.execute('select ClinicName, FirstName, LastName, PharmEmail from Pharmacists where PharmEmail = "{id}"'.format(id=userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get pharmacist list of patients
@pharmacists.route('/pharmacists/<userID>/patients', methods=['GET'])
def get_patients(userID):
    cursor = db.get_db().cursor()
    cursor.execute('select FirstName, LastName, DOB, Email, Phone from`Layman Patients` where PharmEmail = "{id}"'.format(id=userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Access/Modify patient's list of drugs
@pharmacists.route('/patients/<userID>/drugs', methods=['GET', 'POST', 'DELETE'])
def access_patient_drugs(userID):
    # Get patient's list of drugs
    if request.method == 'GET':
        cursor = db.get_db().cursor()
        cursor.execute("SELECT MName from patient_med WHERE PUsername = '{id}'".format(id=userID))
        row_headers = [x[0] for x in cursor.description]
        json_data = []
        theData = cursor.fetchall()
        for row in theData:
            json_data.append(dict(zip(row_headers, row)))
        the_response = make_response(jsonify(json_data))
        the_response.status_code = 200
        the_response.mimetype = 'application/json'
        return the_response

    # Add a drug to a patient's list of drugs
    elif request.method == 'POST':
        the_data = request.json
        current_app.logger.info(the_data)
        indication = the_data['Indication']
        drug_name = the_data['MName']
        query = 'INSERT INTO patient_med (Indication, PUsername, MName) VALUES ("'
        query += indication + '", "'
        query += userID + '", "'
        query += drug_name + '")'
        current_app.logger.info(query)

        cursor = db.get_db().cursor()
        cursor.execute(query)
        db.get_db().commit()

    # Delete a drug from a patient's list of drugs
    elif request.method == 'DELETE':
        the_data = request.json
        current_app.logger.info(the_data)
        drug_name = the_data['MName']
        query = 'DELETE FROM patient_med WHERE '
        query += 'PUsername = "' + userID + '" AND '
        query += 'MName = "' + drug_name + '"'
        current_app.logger.info(query)

        cursor = db.get_db().cursor()
        cursor.execute(query)
        db.get_db().commit()

    return 'Success'

# Get warnings for a specific drug
@pharmacists.route('/drugs/<name>/warnings', methods = ['GET'])
def get_drug_warnings(name):
    cursor = db.get_db().cursor()
    current_app.logger.info("SELECT * from med_interactions WHERE MName1 = '{name}' OR MName2 = '{name}'".format(name=name))
    cursor.execute("SELECT * from med_interactions WHERE MName1 = '{name}' OR MName2 = '{name}'".format(name=name))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get patient's contact information
@pharmacists.route('/patients/<userID>/contact')
def get_patient_contact(userID):
    cursor = db.get_db().cursor()
    cursor.execute("SELECT FirstName, LastName, Phone, Email FROM `Layman Patients` WHERE PUsername = '{id}'".format(id=userID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get patient's drug indications
@pharmacists.route('/patients/<userID>/drugs/<name>', methods=['GET'])
def get_patient_drug_indication(userID, name):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT Indication FROM patient_med WHERE PUsername = "{id}" AND MName = "{name}"'.format(id=userID, name=name))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get detailed educational information for a drug
@pharmacists.route('/drugs/<name>/detail', methods=['GET'])
def get_drug_info(name):
    cursor = db.get_db().cursor()
    cursor.execute('SELECT Description, EdInfo FROM Medications WHERE MName = "{name}"'.format(name=name))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

