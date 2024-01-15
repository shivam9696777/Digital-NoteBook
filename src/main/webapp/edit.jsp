<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Edit Notes: </title>
<link rel="stylesheet" href="css/addNote.css" />
</head>
<body>
<div class="container">
		<%@include file="navBar.jsp"%>
		<br>
		 
	<h2 class="heading"> Edit Your Notes...</h2>
	 <br>
	 
	 <%
		int noteId = Integer.parseInt(request.getParameter("noteId").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = (Note) s.get(Note.class, noteId);
		%>
	 
	<div class="container">
		<form action="UpServlet" method="post">
		<input value="<%=note.getId()%>" name="noteId" type="hidden" />
			<div class="row">
				<div class="col-1">
					<label for="fname">Title</label>
				</div>
				<div class="col-2">
					<input type="text" id="fname" name="title"
						placeholder="Your title.." required value="<%=note.getTitle()%>"/>>
				</div>
			</div>
			 
			 
			<div class="row">
				<div class="col-1">
					<label for="textArea">Text Area</label>
				</div>
				<div class="col-2">
					<textarea id="subject" name="text"
						placeholder="Write something.."style="height: 200px" required><%=note.getContent()%></textarea>
				</div>
			</div>
			<div class="bt">
				<input type="submit" value="Submit">
			</div>
		</form>
	</div>
</body>
</html>