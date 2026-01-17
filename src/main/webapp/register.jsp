<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding-top: 60px; /* space for fixed navbar */
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

        /* FORM CONTAINER */
        .container {
            width: 400px;
            margin: 40px auto;
            background-color: #ffffff;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .gender {
            margin-bottom: 15px;
        }

        .gender input {
            margin-right: 5px;
        }

        .message {
            color: green;
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
    </style>
</head>

<body>

<!-- NAVBAR -->
<nav>
    <div class="nav-container">
        <a href="home.html" class="logo">UserApp</a>
        <div class="menu">
            <a href="home.jsp">Home</a>
            <a href="register.jsp">Register</a>
            <a href="login.jsp">Login</a>
        </div>
    </div>
</nav>

<!-- FORM -->
<div class="container">
    <h2>User Registration</h2>

    <div class="message">${message}</div>

    <form action="doregister" method="post">

        <label>Enter Username</label>
        <input type="text" name="username" required>

        <label>Enter Password</label>
        <input type="password" name="password" required>

        <label>Enter Email</label>
        <input type="email" name="email" required>

        <label>Gender</label>
        <div class="gender">
            <input type="radio" name="gender" value="Male" required> Male
            <input type="radio" name="gender" value="Female"> Female
        </div>

        <label>City</label>
        <select name="city" required>
            <option value="">-- Select City --</option>
            <option value="Pune">Pune</option>
            <option value="Mumbai">Mumbai</option>
            <option value="Delhi">Delhi</option>
        </select>

        <input type="submit" value="Register Now">
    </form>
</div>

</body>
</html>
