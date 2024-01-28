package org.study.Model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.study.Model.bean.UserBean;
import org.study.misc.ConnectionProvider;

public class LoginDAO {
	public boolean login(UserBean bean)
	{
		String email = bean.getEmail();
		String pass = bean.getPass();
		boolean status = false;
		Connection con = ConnectionProvider.createC();
		try {
			PreparedStatement pstm = con.prepareStatement("select *from user where(email = ? and password = ?)");
			pstm.setString(1, email);
			pstm.setString(2, pass);
			ResultSet rs = pstm.executeQuery();
			status = rs.next();
			
		} catch(Exception e) {}
		return status;
		
	}
}
