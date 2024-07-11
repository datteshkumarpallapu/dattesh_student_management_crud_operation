# jsp-servlet-jdbc-mysql-crud-oprations 
JSP Servlet JDBC MySQL CRUD Example  

Student Management Web Application

Introduction:

This project is a simple web application that performs CRUD (Create, Read, Update, Delete) operations on a database table named students using Java EE, Servlets, and JDBC. It demonstrates the fundamental concepts of web application development with Java, providing a form to add new students, display a list of students, update student details, and delete students.

Prerequisites:
Java Development Kit (JDK) 8 or higher
Apache Tomcat 9 or higher
MySQL Database
IDE such as Eclipse 
Database Setup
Create the database:

Open MySQL Workbench or any MySQL client and execute the following commands to create the database and table:
sql
Copy code
CREATE DATABASE student_db;

USE student_db;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(50),
    age INT
);

Project Setup

Create a new Dynamic Web Project:

Open your IDE and create a new Dynamic Web Project.
Add the necessary JAR files for JDBC and Servlets if they are not included by default.

Clone the repository:

Clone this repository to your local machine using the command:

bash
Copy code
git clone https://github.com/yourusername/student-management.git


Import the project:

Import the cloned project into your IDE.
Database Connection
Configure the database connection:
Update the DatabaseUtil.java file with your MySQL database credentials.

Example:
java
Copy code
package com.example.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseUtil {
    private static final String URL = "jdbc:mysql://localhost:3306/student_db";
    private static final String USER = "root";
    private static final String PASSWORD = "password";

    public static Connection getConnection() {
        Connection connection = null;
        try {
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }
}



Application Structure

The application is structured as follows:

DAO Layer: Manages database operations.
Model Layer: Represents the student entity.
Servlet Layer: Handles HTTP requests and responses.
JSP Pages: Provides the user interface for CRUD operations.
Servlets and JSP Pages


Servlets:

StudentServlet.java: Handles the creation of new students,Displays the list of all students,Updates the details of an existing student,Deletes a student from the database.


JSP Pages:

student-list.jsp: Displays the list of all students.
student-form.jsp: Form for adding a new student.
Error.jsp: Displaying error in the application.
Running the Application


Build the project:

If you are using Maven, build the project using the command:
Copy code
mvn clean install


Deploy the application:

Copy the generated WAR file to the webapps directory of your Tomcat server.
Start the Tomcat server.


Access the application:

Open a web browser and navigate to http://localhost:8080/student-management.
Use the provided forms and links to perform CRUD operations.
Code Conventions and Comments
The code follows standard Java coding conventions.
Each class and method is well-commented to explain its purpose and functionality.


Conclusion:

This project provides a basic example of a Java EE web application that performs CRUD operations. It serves as a starting point for learning more about web application development using Java.
