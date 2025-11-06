<%@ page import="com.demo.main.model.User" %>
<%
User u = (User) session.getAttribute("user");
if (u == null) {
    response.sendRedirect("/");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">User Portal</a>
    <a href="logout" class="btn btn-outline-light">Logout</a>
  </div>
</nav>

<div class="container mt-5">
    <div class="card shadow-lg p-4">
        <h3 class="text-center text-primary mb-3">Welcome, <%= u.getName() %>!</h3>
        <hr>
        <p><strong>Email:</strong> <%= u.getEmail() %></p>
        <p><strong>Phone:</strong> <%= u.getPhone() %></p>
        <p><strong>Address:</strong> <%= u.getAddress() %></p>
    </div>
</div>

</body>
</html>
