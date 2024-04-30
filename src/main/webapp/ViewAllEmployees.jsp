<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ViewAllEmp</title>
<link rel="icon" type="image/x-icon" href="favicon.png">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<style>
#lo{
color: white;
text-decoration: none;
}
body{
  background-image: url("vw.jpg");
}
h3{
position: absolute;
right: 30%;
top: 20%;
}
button{
position: absolute;
right: 3%;
top: 1%;
height: 40px;
width: 90px;
}


/* Default font size */
h3 {
  font-size: 16px;
}

/* Small devices (portrait phones, less than 576px) */
@media (max-width: 575.98px) {
  h3 {
    font-size: 14px;
  }
}

/* Medium devices (landscape phones, 576px and up) */
@media (min-width: 576px) {
  h3 {
    font-size: 16px;
  }
}

/* Large devices (tablets, 768px and up) */
@media (min-width: 768px) {
  h3 {
    font-size: 18px;
  }
}

/* Extra large devices (desktops, 992px and up) */
@media (min-width: 992px) {
  h3 {
    font-size: 20px;
  }
}

/* Extra large devices (large desktops, 1200px and up) */
@media (min-width: 1200px) {
  h3{
    font-size: 22px;
  }
}
</style>
</head>
<body>
<h3><%
AdminBean ab=(AdminBean)session.getAttribute("abean");
ArrayList<EmployeeBean> al=(ArrayList<EmployeeBean>)session.getAttribute("alist");
out.println("Page belongs to Admin:"+ab.getfName()+"<br><br><br>"); 
out.println("<hr>");
if(al.size()==0)
{
	out.println("Employees Not Available...<br>");
}
else
{
	Iterator<EmployeeBean> it=al.iterator();
	while(it.hasNext()){
		EmployeeBean eb=(EmployeeBean)it.next();
		out.println("-> "+eb.geteId()+"&nbsp&nbsp"+eb.geteName()+"&nbsp&nbsp"+eb.geteDesg()+"&nbsp&nbsp"+
		eb.getBsal()+"&nbsp&nbsp"+eb.getHra()+"&nbsp&nbsp"+eb.getDa()+"&nbsp&nbsp"+eb.getTotsal()+
		"&nbsp&nbsp"+"<a href='edit?eid="+eb.geteId()+"'>Edit</a>"+"&nbsp&nbsp"+"<a href='delete?eid="
		+eb.geteId()+"'>Delete</a>"+"<br>");
		out.println("<hr>");
	}
	
	
}
%></h3>
<button type="button" class="btn btn-primary"><a href="logout" id="lo">Logout</a></button>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>