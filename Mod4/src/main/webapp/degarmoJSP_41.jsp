<%@ page import="java.util.ArrayList" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Populating Table</title>
</head>
<body>
	<h1>User Choice Table</h1>
	<hr /> <br />
	<p>
	The purpose of this JSP is to display some user 
	selections and input in a table. I'm using check 
	boxes and a list of some books that I like. Check 
	the boxes of any books you want to see more information 
	about.
	</p>
	<h4>Choose any number of books to display information on.</h4>
	<form>
		<input type="checkbox" name="booksCheck" value="Dune">Dune <br />
		<input type="checkbox" name="booksCheck" value="Leviathan Wakes">Leviathan Wakes <br />
		<input type="checkbox" name="booksCheck" value="Homeland">Homeland <br />
		<input type="checkbox" name="booksCheck" value="The Magicians' Guild">The Magicians Guild <br />
		<input type="checkbox" name="booksCheck" value="Priestess of the White">Priestess of the White <br />
		<input type="checkbox" name="booksCheck" value="The Way of Shadows">The Way of Shadows <br />
		<input type="checkbox" name="booksCheck" value="The Taking">The Taking <br />
		<input type="checkbox" name="booksCheck" value="The Final Empire">The Final Empire <br />
		<input type="checkbox" name="booksCheck" value="New Spring">New Spring <br />
		<input type="checkbox" name="booksCheck" value="Harry Potter and the Sorcerers' Stone">Harry Potter and the Sorcerer's Stone <br />
		<input type="submit" value="Submit">
	</form>
	<!-- create book objects and array list for storing values -->
		
		<%
			class Book {
				String title;
				String author;
				int year;
				String isSeries;
				
				Book(String title, String author, int year, String isSeries){
					this.title = title;
					this.author = author;
					this.year = year;
					this.isSeries = isSeries;
				}
			}
			Book dune = new Book("Dune", "Frank Herbert", 1965, "yes");
			Book leviathanWakes = new Book("Leviathan Wakes", "James S. A. Corey", 2011, "yes");
			Book homeland = new Book("Homeland", "R. A. Salvatore", 1990, "yes");
			Book magiciansGuild = new Book("The Magicians' Guild", "Trudi Canavan", 2001, "yes");
			Book priestessOfTheWhite = new Book("Priestess of the White", "Trudi Canavan", 2008, "yes");
			Book wayOfShadows = new Book("The Way of Shadows", "Brent Weeks", 2008, "yes");
			Book theTaking = new Book("The Taking", "Dean Koontz", 2004, "no");
			Book finalEmpire = new Book("The Final Empire", "Brandon Sanderson", 2006, "yes");
			Book newSpring = new Book("New Spring", "Robert Jordan", 2004, "yes");
			Book sorcerersStone = new Book("Harry Potter and the Sorcerers' Stone", "J. K. Rowling", 1999, "yes");
			
			ArrayList<Book> books = new ArrayList<Book>();
			books.add(dune);
			books.add(leviathanWakes);
			books.add(homeland);
			books.add(magiciansGuild);
			books.add(priestessOfTheWhite);
			books.add(wayOfShadows);
			books.add(theTaking);
			books.add(finalEmpire);
			books.add(newSpring);
			books.add(sorcerersStone);
		%>
		<br />
		
		<!-- Get the selected items and display in table -->
		<table border="1">
		<tr>
			<th>Title</th><th>Author</th><th>Release Year</th><th>Part of a Series?</th>
		</tr>
		<%
			String[] selected = 
					request.getParameterValues("booksCheck");
			
			
			if(selected != null && selected.length != 0){
				for(int i = 0; i < selected.length; i++){
					out.print("<tr>");
					for(Book book: books){
						if(book.title.equals(selected[i])){
							out.print("<td>");
							out.println(book.title);
							out.print("</td>");
							out.print("<td>");
							out.println(book.author);
							out.print("</td>");
							out.print("<td>");
							out.println(book.year);
							out.print("</td>");
							out.print("<td>");
							out.println(book.isSeries);
							out.println("</td>");
						}
					}
					out.print("</tr>");
				}
			}
			
		%>
	</table>
</body>
</html>