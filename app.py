from flask import *
import pymysql


app = Flask (__name__)

@app.route("/api/signup",methods = ["POST"])
def signup():
    # code to execute
    username = request.form['username']
    email = request.form['email']
    phone = request.form['phone']
    password = request.form['password']

    print(username, email, phone, password)

    # create db connection
    connection = pymysql.connect(host="localhost", user="root", password="", database="bundi_sokogarden")

    # create cursor
    cursor= connection.cursor()

    # create sql querry
    sql= "insert into users (username, email, phone, password) values(%s, %s, %s, %s)"
    data = (username, email, phone, password)
    # execute the querry
    cursor.execute(sql, data)
    # save the data
    connection.commit()


    # return response
    return jsonify({"message":"sign up api successful"})
    


    # signin

@app.route("/api/signin", methods= ["POST"])
def signin():
    email= request.form["email"]
    password= request.form["password"]
    print(email,password)

    # create a connection to the database
    connection= pymysql.connect(host="localhost", database="bundi_sokogarden", password="", user="root")

    # create a cursor
    cursor= connection.cursor(pymysql.cursors.DictCursor)
    # create an sql
    sql="select user_id, username, email, phone from users where email=%s and password=%s"
    data= (email, password)

    cursor.execute(sql,data)

    if cursor.rowcount== 0:
        return jsonify({"message":"Invalid cridentials"})
    else:
        # get user data
        user= cursor.fetchone()
        return jsonify({"message":"log in successful","user":user}) 


if __name__ == "__main__":
    app.run(debug = True)
 