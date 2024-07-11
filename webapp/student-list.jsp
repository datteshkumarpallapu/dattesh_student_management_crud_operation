<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>User Management Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .navbar {
            background-color: tomato;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: darkred;
        }
        .container {
            padding: 20px;
        }
        .btn-success {
            background-color: green;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
        }
        .btn-success:hover {
            background-color: darkgreen;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: lightgray;
        }
        h3 {
            color: tomato;
        }
    </style>
</head>
<body>
    <header>
        <div class="navbar">
            <a href="https://www.javaguides.net" class="navbar-brand">Student Data App</a>
            <a href="<%=request.getContextPath()%>/list">Students</a>
        </div>
    </header>
    <br>
    <div class="container">
        <h3 class="text-center">List of Students</h3>
        <hr>
        <div class="text-left">
            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add New Student</a>
        </div>
        <br>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Age</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterate over listUser and display each user's details -->
                <c:forEach var="student" items="${listStudent}">
                    <tr>
                        <td><c:out value="${student.id}" /></td>
                        <td><c:out value="${student.name}" /></td>
                        <td><c:out value="${student.email}" /></td>
                        <td><c:out value="${student.age}" /></td>
                        <td>
                            <a href="edit?id=<c:out value='${student.id}' />">Edit</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="delete?id=<c:out value='${student.id}' />">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
