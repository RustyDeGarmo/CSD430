<!--  
Rusty DeGarmo
Professor Payne
Server-Side Development
16 January 2022
 -->
 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%String greeting = "Hello There!"; %>
<%java.util.Date date = new java.util.Date(); %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Module 2</title>
</head>
<body>
	<h1><%=greeting %></h1>
	<p>The current date and time is: <%= date %></p>
	<%out.print("I hope you're having a great day!"); %>
	<%out.print("I don't know how to include a CSS file with JSP yet."); %>
	<%out.print("If I did I would have prettied this up a bit."); %>
</body>
</html>