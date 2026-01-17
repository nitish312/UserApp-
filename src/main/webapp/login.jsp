<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UserApp | Login</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding-top: 70px; /* space for fixed navbar */
    }

    /* NAVBAR (SAME AS HOME PAGE) */
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

    /* LOGIN CONTAINER */
    .container {
        width: 380px;
        margin: 40px auto;
        background-color: #ffffff;
        padding: 25px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    .message {
        color: red;
        text-align: center;
        margin-bottom: 15px;
        font-weight: bold;
    }

    input[type="submit"] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 10px;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    .register-link {
        text-align: center;
        margin-top: 15px;
    }

    .register-link a {
        text-decoration: none;
        color: #4CAF50;
        font-weight: bold;
    }

    .register-link a:hover {
        text-decoration: underline;
    }
</style>
</head>

<body>

<!-- NAVBAR (SAME AS HOME PAGE) -->
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

<!-- LOGIN FORM -->
<div class="container">
    <h2>Login</h2>

    <div class="message">${message}</div>

    <form action="dologin" method="post">

        <label>Username</label>
        <input type="text" name="username" placeholder="Enter username" required>

        <label>Password</label>
        <input type="password" name="password" placeholder="Enter password" required>

        <input type="submit" value="Login">
    </form>

    <div class="register-link">
        New user? <a href="register.jsp">Register here</a>
    </div>
</div>

</body>
</html>
