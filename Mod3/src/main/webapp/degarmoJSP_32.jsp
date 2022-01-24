<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Module 3 Part 2</title>
</head>
<body>
	<h2>For Each Looping String Array</h2>
	<hr /><br />
	<p>The purpose of this JSP is to use a For Each loop
	to traverse an array of Strings. I chose to use the 
	titles of some of my favorite TV shows and Movies.
	</p>
	<ul>
		<%
			String[] goodStuff = {
					"The Hobbit", 
					"The Fellowship of the Ring", 
					"The Two Towers", 
					"The Return of the King", 
					"The Expanse", 
					"The Mandalorian", 
					"The Witcher", 
					"A New Hope", 
					"Empire Strikes Back", 
					"Return of the Jedi", 
					"Avatar: The Last Airbender", 
					"Train to Busan", 
					"Dawn of the Dead (1978)", 
					"The Last Man on Earth (1964)"
			};
			
			for(String s: goodStuff){
				out.print("<li> " + s + "</li>");
			}
		%>
	</ul>
	<p>
	This list is unordered because the titles are in 
	no particular order of favoritism.
	</p>
</body>
</html>