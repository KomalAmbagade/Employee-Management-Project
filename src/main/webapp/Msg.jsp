<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Msg</title>
<link rel="icon" type="image/x-icon" href="favicon.png">
</head>
<body>
<%
String msg=(String)request.getAttribute("msg");
out.println(msg);
%>
<%@include file="home.html"%>
</body>
</html>