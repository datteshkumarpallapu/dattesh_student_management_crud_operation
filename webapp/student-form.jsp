<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Student Management Application</title>
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
            max-width: 600px;
            margin: auto;
        }
        .card {
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-top: 20px;
        }
        .card-body {
            padding: 10px;
        }
        h2 {
            color: tomato;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn-success {
            background-color: green;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }
        .btn-success:hover {
            background-color: darkgreen;
        }
    </style>
</head>
<body>
    <header>
        <div class="navbar">
            <a href="https://www.javaguides.net" class="navbar-brand">Student Data App</a>
            <a href="<%=request.getContextPath()%>/list">Student</a>
        </div>
    </header>
    <br>
    <div class="container">
        <div class="card">
            <div class="card-body">
                <c:if test="${student != null}">
                    <form action="update" method="post">
                </c:if>
                <c:if test="${student == null}">
                    <form action="insert" method="post">
                </c:if>
                <h2>
                    <c:if test="${student != null}">
                        Edit Student
                    </c:if>
                    <c:if test="${student == null}">
                        Add New Student
                    </c:if>
                </h2>
                <c:if test="${student != null}">
                    <input type="hidden" name="id" value="<c:out value='${student.id}' />" />
                </c:if>
                <div class="form-group">
                    <label>Student Name</label>
                    <input type="text" value="<c:out value='${student.name}' />" class="form-control" name="name" required="required">
                </div>
                <div class="form-group">
                    <label>Student Email</label>
                    <input type="text" value="<c:out value='${student.email}' />" class="form-control" name="email">
                </div>
                <div class="form-group">
                    <label>Student age</label>
                    <input type="number" value="<c:out value='${student.age}' />" class="form-control" name="age">
                </div>
                <button type="submit" class="btn btn-success">Save</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>