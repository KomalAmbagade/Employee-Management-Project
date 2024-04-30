<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.EmployeeBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EmployeeLogin</title>
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
body 
  {
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        
   }
body{
  background-image: url("vw.jpg");
}
div{
  border: 3px solid #f1f1f1;
  height:500px;
  width:600px;
  background-color:white;
  color:black;
  border-radius: 15px;
  padding: 50px;
}
</style>
</head>

<body>
<div>
<h2><%
 EmployeeBean b=(EmployeeBean)session.getAttribute("b");
 out.println("Welcome Employee: "+b.geteName()+"<br><br><hr>");
%></h2>
<p>
<%
out.println("Id:  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+b.geteId()+"<br>");
out.println("Name: &nbsp&nbsp&nbsp"+b.geteName()+"<br>");
out.println("Desg:&nbsp&nbsp&nbsp&nbsp&nbsp "+b.geteDesg()+"<br>");
out.println("BSal: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+b.getHra()+"<br>");
out.println("Hra: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+b.getHra()+"<br>");
out.println("Da: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp"+b.getDa()+"<br>");
out.println("TotalSal:  "+b.getTotsal()+"<br>");
out.print("<hr>");
%>
</p>
<button type="button" class="btn btn-success"><a href="logout">logout</a></button>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</div>
</body>
</html>