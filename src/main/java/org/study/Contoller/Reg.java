package org.study.Contoller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import org.study.Model.DAO.RegisterDao;
import org.study.Model.bean.UserBean;

/**
 * Servlet implementation class Reg
 */
public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Reg() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("uname");
		String email = request.getParameter("uemail");
		String phno = request.getParameter("uphno");
		String add = request.getParameter("uadd");
		String pass = request.getParameter("upass");
		UserBean ub = new UserBean();
		ub.setName(name);
		ub.setEmail(email);
		ub.setPhno(phno);
		ub.setAdd(add);
		ub.setPass(pass);
		
		RegisterDao rd = new RegisterDao();
		int i = rd.insert(ub);
		
		if(i!=0)
		{
			response.sendRedirect("signup.jsp?msg=valid&delay=3");
		}
		else
		{
			response.sendRedirect("signup.jsp?msg=invalid");
		}
	}

}
