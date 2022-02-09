<%@page import="net.javaguides.mvc.model.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% List<Employee> employees = (List<Employee>)request.getAttribute("employees"); %>


</body>

<table border="1" style="width: 50%">
	<thead>
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
	</thead>
	<tbody>
		<% for(Employee employee : employees){ %>
		<tr>
			<td><%=employee.getId() %></td>
			<td><%=employee.getFirstName() %></td>
			<td><%=employee.getLastName() %></td>
		</tr>
		<%} %>
	</tbody>
			
			
</table>

</html>