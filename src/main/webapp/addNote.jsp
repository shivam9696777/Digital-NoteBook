<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Note</title>
 <link rel="stylesheet" href="css/addNote.css" />
</head>
<body>
<div class="container">
		<%@include file="navBar.jsp"%>
		<br>
		 
	<h2 class="heading">Start Here.......</h2>
	 
	<div class="container">
		<form action="SaveNoteServlet" method="post">
			<div class="row">
				<div class="col-1">
					<label for="fname">Title</label>
				</div>
				<div class="col-2">
					<input type="text" id="fname" name="title"
						placeholder="Your title.." required>
				</div>
			</div>
			 
			 
			<div class="row">
				<div class="col-1">
					<label for="textArea">Text Area</label>
				</div>
				<div class="col-2">
					<textarea id="subject" name="text"
						placeholder="Write something.."style="height: 200px" required></textarea>
				</div>
			</div>
			<div class="bt">
				<input type="submit" value="Submit">
			</div>
		</form>
	</div>
</body>
</html>