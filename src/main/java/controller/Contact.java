package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Person;

@WebServlet("/Contact")
public class Contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String forwardPath = null;
		String mode = request.getParameter("mode");
		
		if(mode == null || mode.equals("back")) {
			forwardPath = "WEB-INF/view/form.jsp";
		}else if(mode.equals("send")) {
			HttpSession session = request.getSession();
			session.removeAttribute("person");

			forwardPath = "WEB-INF/view/send.jsp";
		}

		RequestDispatcher rd = request.getRequestDispatcher(forwardPath);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String memo = request.getParameter("memo");
		Person person = new Person(name,email,memo);
		
		HttpSession session = request.getSession();
		session.setAttribute("person", person);

		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/confirm.jsp");
		rd.forward(request, response);
	}

}
