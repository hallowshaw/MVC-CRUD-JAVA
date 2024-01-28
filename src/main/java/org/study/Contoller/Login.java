package org.study.Contoller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import org.study.Model.DAO.LoginDAO;
import org.study.Model.bean.UserBean;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("uemail");
		String pass = request.getParameter("upass");
		HttpSession session = request.getSession();
		UserBean ub = new UserBean();
		ub.setEmail(email);
		ub.setPass(pass);
		LoginDAO ld = new LoginDAO();
		boolean status = ld.login(ub);
		if(status)
		{
			session.setAttribute("EMAIL", email);
			response.sendRedirect("index.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp?msg=invalid");
		}
	}

}
