from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db


students = Blueprint('students', __name__)


# Get study list for student with particular userID/name
@students.route('/students/<userID>', methods=['GET'])
def get_study_list(userID):
    cursor = db.get_db().cursor()
    cursor.execute('select Mname from student_med where EdUsername = {0}'.format(userID))

    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Add drug to a Student's study list
@students.route('/students/<userID>', methods=['POST'])
def add_drugs(userID):
    current_app.logger.info('Processing form data')
    req_data = request.get_json()
    current_app.logger.info(req_data)

    drug_name = req_data['drug_name']

    insert_stmt = 'INSERT INTO student_med (MNAme, EdUsername) VALUES(")'
    insert_stmNt+= drug_name + '","'+ userID + ')'
    current_app.logger.info(insert_stmt)
    cursor = db.get_db().cursor()
    cursor.execute(insert_stmt)
    db.get_db().commit()
    return 'Success'

# Delete drug from a Student's study list
@students.route('/students/<userID>', methods=['DELETE'])
def delete_drugs(userID):
    if request.method == 'DELETE':
        current_app.logger.info('Processing form data')
        req_data = request.get_json()
        current_app.logger.info(req_data)

        drug_name = req_data['drug_name']

        del_stmt = 'DELETE FROM student_med WHERE MName="'
        del_stmt+= drug_name + '"AND EdUsername="'+ userID + ')'
        current_app.logger.info(del_stmt)
        cursor = db.get_db().cursor()
        cursor.execute(del_stmt)
        db.get_db().commit()
        return 'Success'
    
@students.route('/students/<userID>', methods=['DELETE'])
def delete_notes(userID):
    current_app.logger.info('Processing form data')
    req_data = request.get_json()
    current_app.logger.info(req_data)

    drug_name = req_data['drug_name']

    del_stmt = 'DELETE FROM student_notes WHERE MName="'
    del_stmt+= drug_name + '"AND EdUsername="'+ userID + ')'
    current_app.logger.info(del_stmt)
    cursor = db.get_db().cursor()
    cursor.execute(del_stmt)
    db.get_db().commit()
    return 'Success'

@students.route('/students/<userID>', methods=['PUT'])
def update_notes(userID):
    current_app.logger.info('Processing form data')
    req_data = request.get_json()
    current_app.logger.info(req_data)

    drug_name = req_data['drug_name']
    new_notes = req_data['new_notes']

    insert_stmt = 'UPDATE student_notes SET Description ="'
    insert_stmt+= new_notes + '" WHERE EdUsername="'+ userID + '" AND MName="'+ drug_name+'"'
    current_app.logger.info(insert_stmt)
    cursor = db.get_db().cursor()
    cursor.execute(insert_stmt)
    db.get_db().commit()
    return 'Success'
    

@students.route('/students/learn', methods=['GET'])
def get_sample_case():
    cursor = db.get_db().cursor()
    cursor.execute('select SampProb from samp_prob order by rand() limit 1')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

@students.route('/students/learn', methods=['GET'])
def get_drug_ed_info():
    cursor = db.get_db().cursor()
    cursor.execute('select EdInfo from Medications')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

@students.route('/students/learn', methods=['GET'])
def get_all_uses():
    cursor = db.get_db().cursor()
    cursor.execute('select u.Descriptions from Medications m join use_casesM u using (MName) group by MName')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)