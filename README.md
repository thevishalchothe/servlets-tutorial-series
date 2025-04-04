# servlets-tutorial-series 🚀

servlets-tutorial-series showcases a variety of projects focused on demonstrating core concepts and operations using Java Servlets. 📘🚀

## Project Architecture 📂

- **hello-servlet**
  - This `hello-servlet` is a simple request handling implementation focusing on the default request and explicit request mapping to '/hello'.
  - Basic web deployment and servlet mapping in `web.xml`.

- **hello-servlet-greeting-web**
  - A simple Servlet-based web application that responds with a `greeting message` dynamically.
  - Demonstrates basic `GET request handling` with `HttpServlet`.

- **servlet-lifecycle-web**
  - Showcases the `lifecycle of a Servlet` (`init()`, `service()`, `destroy()`).
  - For understanding how Servlets are managed by the Servlet container.

- **book-management-servlet-app**
  - Tech Stack: Servlet, JSP, HTML, JDBC, MySQL, Maven, Tomcat
  - Models:  Book `(fields: id, title, author)`, User `(Fields: uid, uname, email)`, Admin `(fields:id, adminName, username,password)`
  - Features:
    1. **Setup:** Create Controller, Service, DAO, Model, DBConnection utility, and `webapp` folder structure.
    2. **Models:** Implement POJOs for `Book`, `User`, and `Admin` with appropriate fields, constructors, getters, and setters.
    3. **Dependencies:** Add required dependencies like `jakarta.servlet`, `mysql-connector-java` in `pom.xml`.
    4. **Controllers:** Implement full CRUD operations for **Books** and **Users**, and add logic for **Admin Register/Login**.
    5. **Routing:** Configure servlet routes and servlet mappings in `web.xml`.
    6. **Views:** Create interactive forms (`add-book.html`, `register-admin.html`, etc.), and display pages using JSP (`view-books.jsp`, etc.).
    7. **Deployment:** Build the `.war` file and deploy on Apache Tomcat server - Done! ✅

**Outcome:** A dynamic **Book Management System** with book, user and admin handling via Servlets! 🎯📖
