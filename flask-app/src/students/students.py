from flask import Blueprint, request, jsonify, make_response
import json
from src import db


students = Blueprint('students', __name__)

@students.route('/students', methods=['GET'])
def get_study_list():
    cursor = db.get_db().cursor()
    cursor.execute('select MName from PharmacyStudent join student_med using (EdUsername)')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

@students.route('/students', methods=['GET'])
def get_sample_case():
    cursor = db.get_db().cursor()
    cursor.execute('select SampProb from samp_prob order by rand() limit 1')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

@students.route('/students', methods=['GET'])
def get_drug_ed_info():
    cursor = db.get_db().cursor()
    cursor.execute('select EdInfo from Medications')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

@students.route('/students', methods=['GET'])
def get_all_uses():
    cursor = db.get_db().cursor()
    cursor.execute('select u.Descriptions from Medications m join use_casesM u using (MName) group by MName')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)


from flask import current_app
@students.route('/students', methods=['POST'])
def add_drug():
    current_app.logger.info('Processing form data')
    req_data = request.get_json()
    current_app.logger.info(req_data)

    med_name = req_data['medication_name']
    user = 'username'

    query = 'insert into student_med (medication_name, EdUsername) values("'
    query += med_name + '", "' + user + '")'

    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()
    return "yay"

@students.route('/students', methods=['GET'])
def get_notes():
    current_app.logger.info('Processing form data')
    req_data = request.get_json()
    current_app.logger.info(req_data)

    med_name = req_data['medication_name']

    cursor = db.get_db().cursor()
    cursor.execute('select Description from student_notes where MName = "' + med_name + '"')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

@students.route('/students', methods=['PUT'])
def add_notes():
    current_app.logger.info('Processing form data')
    req_data = request.get_json()
    current_app.logger.info(req_data)

    med_name = req_data['medication_name']
    notes = req_data['new_notes']

    query = 'update student_notes set description = "'
    query += notes + '"where MName = "' + med_name

    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()
    return "yay"

@students.route('/students', methods=['DELETE'])
def delete_drugs():
    current_app.logger.info('Processing form data')
    req_data = request.get_json()
    current_app.logger.info(req_data)

    med_name = req_data['deletion_name']

    query = 'delete from student_med where MName = "'
    query += med_name

    current_app.logger.info(query)

    cursor = db.get_db().cursor()
    cursor.execute(query)
    db.get_db().commit()
    return "yay"