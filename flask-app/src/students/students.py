from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


students = Blueprint('students', __name__)


# Get study list for student with particular userID/name
@students.route('/students/<userID>', methods=['GET'])
def get_study_list(userID):
    cursor = db.get_db().cursor()
    cursor.execute('select Mname as label, Mname as value from student_med where EdUsername = "' + userID + '"')

    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))
    return jsonify(json_data)

# Add drug to a Student's study list
@students.route('/students/<userID>/drugs', methods=['POST'])
def add_drugs(userID):
    current_app.logger.info('Processing form data')
    req_data = request.get_json()
    current_app.logger.info(req_data)

    drug_name = req_data['medication_name']

    insert_stmt = 'INSERT INTO student_med (MNAme, EdUsername) VALUES("'
    insert_stmt += drug_name + '","'+ userID + '")'
    current_app.logger.info(insert_stmt)
    cursor = db.get_db().cursor()
    cursor.execute(insert_stmt)
    db.get_db().commit()
    return 'Success'

# Delete drug from a Student's study list
@students.route('/students/<userID>/drugs', methods=['DELETE'])
def delete_drugs(userID):
    if request.method == 'DELETE':
        current_app.logger.info('Processing form data')
        req_data = request.get_json()
        current_app.logger.info(req_data)

        drug_name = req_data['deletion_name']

        del_stmt = 'DELETE FROM student_med WHERE (MName = "'
        del_stmt += drug_name + '" AND EdUsername = "'+ userID + '")'
        current_app.logger.info(del_stmt)
        cursor = db.get_db().cursor()
        cursor.execute(del_stmt)
        db.get_db().commit()
        return 'Success'
    
# Get notes for particular drug associated with student with particular userID/name
@students.route('/students/<userID>/notes', methods=['GET'])
def get_notes(userID):
    cursor = db.get_db().cursor()
    cursor.execute('select Mname as label, Description as value from student_notes where (EdUsername = "' + userID + '")')

    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))
    return jsonify(json_data)
    
    
@students.route('/students/<userID>/notes', methods=['DELETE'])
def delete_notes(userID):
    current_app.logger.info('Processing form data')
    req_data = request.get_json()
    current_app.logger.info(req_data)

    drug_name = req_data['list_name']

    del_stmt = 'DELETE FROM student_notes WHERE (MName = "'
    del_stmt += drug_name + '" AND EdUsername = "'+ userID + '")'
    current_app.logger.info(del_stmt)
    cursor = db.get_db().cursor()
    cursor.execute(del_stmt)
    db.get_db().commit()
    return 'Success'

@students.route('/students/<userID>/notes', methods=['PUT'])
def update_notes(userID):
    current_app.logger.info('Processing form data')
    req_data = request.get_json()
    current_app.logger.info(req_data)

    drug_name = req_data['list_name']
    new_notes = req_data['new_notes']

    insert_stmt = 'UPDATE student_notes SET Description ="'
    insert_stmt+= new_notes + '" WHERE (EdUsername="'+ userID + '" AND Mname="'+ drug_name+'")'
    current_app.logger.info(insert_stmt)
    cursor = db.get_db().cursor()
    cursor.execute(insert_stmt)
    db.get_db().commit()
    return 'Success'
    

@students.route('/students/learn/sc', methods=['GET'])
def get_sample_case():
    cursor = db.get_db().cursor()
    cursor.execute('select SampProb from samp_prob order by rand() limit 1')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

@students.route('/students/learn/ed', methods=['GET'])
def get_drug_ed_info():
    cursor = db.get_db().cursor()
    cursor.execute('select MName, EdInfo from Medications')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

@students.route('/students/learn/uses', methods=['GET'])
def get_all_uses():
    current_app.logger.info('Processing form data')
    req_data = request.get_json()
    current_app.logger.info(req_data)

    drug_name = req_data['drug_name']
    cursor = db.get_db().cursor()
    cursor.execute('select Description from use_casesM where MName="'+ drug_name+'"')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)