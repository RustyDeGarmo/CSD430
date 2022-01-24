<!--  
Rusty DeGarmo
Professor Payne
Server-Side Development
23 January 2022
 -->
 
<%@ page import="java.lang.Math" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%int[] intArray = new int[20]; %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Module 3 Part 1</title>
</head>
<body>
	<h1>For Looping Int Array</h1>
	<hr /><br />
	<p>The purpose of this JSP is to loop an int array and display the 
	values as well as whether the value is even or odd. I've randomized 
	the values with another for loop using Math.random(). Refresh the 
	page to get new values.</p>
	<p>The integer array values are: </p>
	<%for(int i =0; i < 20; i++){
		intArray[i] = (int)(Math.random() * 20 + 1);
	}
	%>
	<ol>
	<%
		for(int j = 0; j < intArray.length; j++){
			out.print("<li>");
			if(intArray[j]%2 == 0){
				out.println("The value at index " + j +
						" is Even Steven: " + intArray[j]);
			}else{
				out.println("The value at index " + j + 
						" is Odd Duck: " + intArray[j]);
			}
			out.print("</li>");
		}
	%>
	</ol>
	
</body>
</html>