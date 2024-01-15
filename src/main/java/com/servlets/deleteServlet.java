package com.servlets;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public deleteServlet() {
        super();       
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.getWriter().append("Served at: ").append(request.getContextPath());
	try {
	int noteId=Integer.parseInt(request.getParameter("noteId").trim())	;
	Session s=FactoryProvider.getFactory().openSession();
	Transaction tx=s.beginTransaction();
	Note note=s.get(Note.class,noteId);
	s.delete(note);
	tx.commit();
	s.close();
	response.sendRedirect( "showNotes.jsp");
	}catch(Exception e){
		
	}
	}


}
