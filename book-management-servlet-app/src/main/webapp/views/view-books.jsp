<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.vbc.servlet.management.model.Book" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Books</title>
    <script type="text/javascript">
        function showStatusMessage() {
            const urlParams = new URLSearchParams(window.location.search);
            if(urlParams.has('deleted') && urlParams.get('deleted') === 'true') {
                alert('Book deleted successfully!');
                window.history.replaceState({}, document.title, window.location.pathname);
            }
            if(urlParams.has('updated') && urlParams.get('updated') === 'true') {
                alert('Book updated successfully!');
                window.history.replaceState({}, document.title, window.location.pathname);
            }
        }

        function confirmDelete(form) {
            if(confirm('Are you sure you want to delete this book?')) {
                form.submit();
            }
            return false;
        }
    </script>
</head>
<body onload="showStatusMessage()">
<h2>Book List</h2>

<%
    String message = (String) request.getAttribute("message");
    List<Book> books = (List<Book>) request.getAttribute("books");

    if (message != null) {
%>
    <p style="color:red;"><%= message %></p>
<%
    } else if (books != null && !books.isEmpty()) {
%>
    <table border="1" width="50%" cellspacing="0" cellpadding="3">
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Author</th>
            <th>Actions</th>
        </tr>
        <%
            for (Book book : books) {
        %>
        <tr>
            <td><%= book.getBid() %></td>
            <td><%= book.getTitle() %></td>
            <td><%= book.getAuthor() %></td>
            <td>
                <form action="UpdateBookController" method="get" style="display:inline;">
                    <input type="hidden" name="bid" value="<%= book.getBid() %>">
                    <button type="submit">Update</button>
                </form>
                <form action="DeleteBookController" method="post" style="display:inline;" onsubmit="return confirmDelete(this)">
                    <input type="hidden" name="bid" value="<%= book.getBid() %>">
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
        <%
            }
        %>
    </table>
<%
    } else {
%>
    <p>No books available.</p>
<%
    }
%>

<br>
<div>
    <button onclick="location.href='index.html'">Back to Home</button>
</div>
</body>
</html>
