<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.AdminBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLogin</title>
<link rel="icon" type="image/x-icon" href="favicon.png">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>
a{
 text-decoration: none;
 color: white;
 font-size: larger;
 font-weight:bold;
}
button{
 border-radius:40px;
 margin: 30px;
 width: 200px;
 height: 60px;
}

div{
position: absolute;
right: 40%;
top: 30%;
}
h2{
position: absolute;
right: 40%;
top: 15%;
}
body{
  background-image: url("wel.jpg");
}
</style>
</head>
<body>
<h2><%
 AdminBean ab=(AdminBean)session.getAttribute("abean");
out.println("welcome Admin: "+ab.getfName()+"<br>");
%></h2>
<div>
<button type="button" class="btn btn-info"><a href="Employee.html">AddEmployee</a></button><br>
<button type="button" class="btn btn-primary"><a href="view">ViewAllEmployees</a></button><br>
<button type="button" class="btn btn-success"><a href="logout">logout</a></button>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>