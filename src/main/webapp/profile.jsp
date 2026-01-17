<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UserApp | Profile</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        padding-top: 70px; /* space for fixed navbar */
    }

    /* NAVBAR (SAME AS HOME & LOGIN) */
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

    /* PROFILE CARD */
    .container {
        width: 450px;
        margin: 40px auto;
        background-color: #ffffff;
        padding: 25px;
        border-radius: 8px;
        box-shadow: 0 0 12px rgba(0,0,0,0.15);
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
    }

    .field {
        margin-bottom: 15px;
        font-size: 16px;
    }

    .label {
        font-weight: bold;
        color: #555;
    }

    .value {
        color: #000;
        margin-left: 5px;
    }
</style>
</head>

<body>

<!-- NAVBAR (SAME AS HOME & LOGIN) -->
<nav>
    <div class="nav-container">
        <a href="home.jsp" class="logo">UserApp</a>
        <div class="menu">
            <a href="home.jsp">Home</a>
            <a href="register.jsp">Register</a>
            <a href="login.jsp">Logout</a>
        </div>
    </div>
</nav>

<!-- PROFILE -->
<div class="container">
    <h2>Welcome, ${user.username}</h2>

    <div class="field">
        <span class="label">Username:</span>
        <span class="value">${user.username}</span>
    </div>

    <div class="field">
        <span class="label">Email:</span>
        <span class="value">${user.email}</span>
    </div>

    <div class="field">
        <span class="label">Gender:</span>
        <span class="value">${user.gender}</span>
    </div>

    <div class="field">
        <span class="label">City:</span>
        <span class="value">${user.city}</span>
    </div>
</div>

</body>
</html>
