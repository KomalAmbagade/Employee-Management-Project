<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditEmp</title>
<link rel="icon" type="image/x-icon" href="favicon.png">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<style>
  body{
 background-image: url("reg.jpg");
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
    
 #fm{
 height: 500px;
 width: 500px;
 border-style: solid;
  background-color: white;
 color: black;
 padding: 30px;
 }
 
</style>
</head>
<body>
<div id="fm">
<h4><%
AdminBean ab=(AdminBean)session.getAttribute("abean");
EmployeeBean eb=(EmployeeBean)request.getAttribute("ebean");
out.println("Page belongs to Admin:"+ab.getfName()+"<br>");
%></h4>

<form action="update" method="post">

  <div class="form-group">
    <input type="hidden" name="eid" value=<%=eb.geteId() %> class="form-control" aria-describedby="eidHelp">
  </div><br>

  <div class="form-group">
    <label for="exampleInputBSal">BasicSal</label>
    <input type="text" name="bsal" value=<%=eb.getBsal() %> class="form-control" id="exampleInputBSal" aria-describedby="BSalHelp">
  </div><br>
  
  <div class="form-group">
    <label for="exampleInputHRA">HRA(1-100)</label>
    <input type="text" name="hra" value=<%=eb.getHra() %> class="form-control" id="exampleInputHRA" aria-describedby="HraHelp">
  </div><br>
  
  <div class="form-group">
    <label for="exampleInputHRA">DA(1-100)</label>
    <input type="text" name="da" value=<%=eb.getDa() %> class="form-control" id="exampleInputDa" aria-describedby="DaHelp">
  </div><br>
  
  <div class="form-group">
   <input type="submit" class="btn btn-primary" value="Update">
  </div>

</form>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>