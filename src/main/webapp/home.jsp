<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UserApp | Home</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
    }

    /* NAVBAR */
    nav {
        position: fixed;
        top: 0;
        width: 100%;
        background-color: #333;
        padding: 12px 0;
        box-shadow: 0 2px 6px rgba(0,0,0,0.2);
        z-index: 1000;
    }

    nav .nav-container {
        width: 80%;
        margin: auto;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    nav .logo {
        color: #fff;
        font-size: 20px;
        font-weight: bold;
        text-decoration: none;
    }

    nav .menu a {
        color: #fff;
        text-decoration: none;
        margin-left: 20px;
        font-size: 15px;
        padding: 6px 10px;
        border-radius: 4px;
    }

    nav .menu a:hover {
        background-color: #4CAF50;
    }

    /* HOME CONTENT */
    .container {
        text-align: center;
        margin-top: 120px;
    }

    .container h2 {
        font-size: 30px;
        margin-bottom: 10px;
        color: #333;
    }

    .container p {
        font-size: 16px;
        color: #555;
        margin-bottom: 30px;
    }

    .btn {
        display: inline-block;
        padding: 10px 22px;
        margin: 10px;
        background-color: #4CAF50;
        color: white;
        text-decoration: none;
        border-radius: 4px;
        font-size: 16px;
    }

    .btn:hover {
        background-color: #45a049;
    }
</style>
</head>

<body>

<!-- NAVBAR -->
<nav>
    <div class="nav-container">
        <a href="home.jsp" class="logo">UserApp</a>
        <div class="menu">
            <a href="home.jsp">Home</a>
            <a href="register.jsp">Register</a>
            <a href="login.jsp">Login</a>
        </div>
    </div>
</nav>

<!-- HOME CONTENT -->
<div class="container">
    <h2>Welcome to UserApp</h2>
    <h3>Authentication & Access Control using Java Servlets and JSP</h3>

    <a href="register.jsp" class="btn">Register</a>
    <a href="login.jsp" class="btn">Login</a>
</div>

</body>
</html>
