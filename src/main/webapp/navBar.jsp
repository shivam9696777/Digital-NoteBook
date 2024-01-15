<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
 
<title>NavBar</title>
<link href="css/style.css" rel="stylesheet" />
</head>

<body>
	<nav class="navbar">
		<!-- LOGO -->
		<div class="logo">
			 NOTE BOOK 
		</div>

		<!-- NAVIGATION MENU -->
		<ul class="nav-links">

			<!-- USING CHECKBOX HACK -->
			<input type="checkbox" id="checkbox_toggle" />
			<label for="checkbox_toggle" class="hamburger">&#9776;</label>

			<!-- NAVIGATION MENUS -->
			<div class="menu">


				<li><a href="index.jsp">Note Taker </a></li>
				<li><a href="addNote.jsp"> Add Note</a></li>
				<li><a href="showNotes.jsp">Show Note</a></li>
			</div>
		</ul>
	</nav>
</body>

</html>
