# UserApp – Authentication & Access Control using Java Servlets and JSP

A backend-focused mini project built using **Java Servlets, JSP, JDBC, and MySQL** to strengthen core Java web development fundamentals and understand what happens under the hood of modern frameworks like Spring Boot.

---

## 🚀 Project Overview

**UserApp** is a simple authentication and access control system that allows users to register, log in, and view their profile details.
The project demonstrates an end-to-end Java web application flow:

**Client → Servlet → Service/DAO → Database → JSP**

This project was built as a fundamentals refresher while primarily working with **Spring & Spring Boot**, reinforcing how these frameworks are built on top of Servlets and a Servlet container (Tomcat).

---

## ✨ Features

* 🔐 User Registration with form handling via Servlets
* 🗄️ Database persistence using **JDBC** and **MySQL**
* ✅ Login authentication by validating credentials from the database
* 🧾 JSP used for rendering views and displaying user profile data
* 🔄 Clear separation of layers:

  * Controller (Servlet)
  * Service
  * DAO
  * Model (Entity)

---

## 🛠️ Tech Stack

* **Java (JDK 17)**
* **Java Servlets**
* **JSP**
* **JDBC**
* **MySQL**
* **Apache Tomcat 10**
* **HTML / CSS**

---

## 📂 Project Structure

```
UserApp
│
├── src/main/java
│   ├── com.dao
│   │   └── UserDao.java
│   ├── com.entity
│   │   └── User.java
│   ├── com.service
│   │   └── UserService.java
│   ├── com.servlet
│   │   ├── RegisterServlet.java
│   │   ├── LoginServlet.java
│   │   └── LoginFormServlet.java
│   └── com.util
│       └── JDBC_Util.java
│
├── src/main/webapp
│   ├── home.jsp
│   ├── login.jsp
│   ├── register.jsp
│   ├── profile.jsp
│   └── WEB-INF
│       └── web.xml
│
└── lib
    └── mysql-connector-j.jar
```

---

## ⚙️ Application Flow

1. User registers via **register.jsp**
2. Data is handled by **RegisterServlet**
3. Data is persisted using **UserDao (JDBC)**
4. User logs in via **login.jsp**
5. Credentials are validated against the database
6. On success, user details are forwarded to **profile.jsp**
7. On failure, an error message is displayed

---

## 🧠 Why This Project?

Although frameworks like **Spring Boot** improve productivity, they are built on the same core concepts:

* Servlets
* Request lifecycle
* Filters
* Sessions
* MVC pattern

Working directly with Servlets and JSP helps in:

* ✔️ Better debugging of production issues
* ✔️ Clear understanding of request/response lifecycle
* ✔️ Writing cleaner, more efficient Spring Boot applications

**Strong fundamentals make better engineers.**

---

## ▶️ How to Run

1. Clone the repository
2. Import the project into **Eclipse / IntelliJ**
3. Configure **Apache Tomcat 10**
4. Create a MySQL database and `users` table
5. Update DB credentials in `JDBC_Util.java`
6. Deploy and run the application

---

## 👨‍💻 Author

**Nitish Chintakindi** : 
Java Backend Developer | Spring & Spring Boot
Focused on building **scalable and maintainable systems**

---

⭐ If you find this useful, feel free to star the repository!
