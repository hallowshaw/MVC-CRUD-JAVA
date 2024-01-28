package org.study.Model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.study.Model.bean.UserBean;
import org.study.misc.ConnectionProvider;

public class RegisterDao {
	
	public int insert(UserBean bean)
	{
		String name = bean.getName();
		String email = bean.getEmail();
		String phno = bean.getPhno();
		String add = bean.getAdd();
		String pass = bean.getPass();
		
		int i=0;
		try 
		{
			Connection con = ConnectionProvider.createC();
			PreparedStatement pstm = con.prepareStatement("insert into user values(?,?,?,?,?)");
			pstm.setString(1, name);
			pstm.setString(2, email);
			pstm.setString(3, phno);
			pstm.setString(4, add);
			pstm.setString(5, pass);
			
			i=pstm.executeUpdate();
		 }
		catch(Exception e) {}
		return i;
		
	}
}
