
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes:</title>

</head>
<body style="background: #c1d9d6;">

	<div class="container">
		<%@include file="navBar.jsp"%>
		<br>
		<h1 style="text-transform: uppercase; padding: 1.2%;">All Notes:</h1>
		<div style="margin: auto; width: 70%">

			<div>

				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
				%>

				<div style="margin: 3%;">
					<div
						style="padding-right: 6%; padding-top: 6%; padding-left: 6%; border: 6px solid #96b6b0; box-shadow: inset 0 0 10px #000000;">
						<img style="max-width: 50px; border-radius: 30%"
							src="img/logo1.jpg" alt="Card image cap">
						<h5
							style="padding-top: 2%; font-family: 'Open Sans Condensed', sans-serif; font-size: 1.4em; color: #647c9e;"><%=note.getTitle()%></h5>

						<p
							style="font-size: 1em; color: #42a19f; text-decoration: dashed; font-family: Arial, sans-serif; text-align: left; margin-top: 6%;">
							<%=note.getContent()%>
						</p>
						<div
							style="font-size: .74em; color:#55735d; text-decoration: dashed; font-family: Arial, sans-serif; text-align: right; margin-top: 6%;">
							<div><%=note.getAddedDate()%></div>
						</div>

						<div
							style="display: flex; justify-content: center; align-items: center;">
							<button type="button"
								style="background-color: #008CBA; border: none; color: white; padding: 9px 20px; text-align: center; text-decoration: none; display: inline-block; Ffont-size: 16px; margin: 4px 2px; cursor: pointer;">
								<a style="color: white;"
									href="deleteServlet?noteId=<%=note.getId()%>">Delete</a>
							</button>
							<button type="button"
								style="background-color: #04AA6D; border: none; color: white; padding: 9px 20px; text-align: center; text-decoration: none; display: inline-block; Ffont-size: 16px; margin: 4px 2px; cursor: pointer;">
								<a style="color: white;"
									href="edit.jsp?noteId=<%=note.getId()%>">Update</a>
							</button>

						</div>
					</div>
				</div>


				<%
				}

				s.close();
				%>


			</div>

		</div>


	</div>
</body>
</html>