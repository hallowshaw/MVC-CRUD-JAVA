package org.study.misc;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	static Connection con;
	public static Connection createC()
	{
		String url = "jdbc:mysql://localhost:3306/fiem";
		String uname = "root";
		String upass = "Breakout123???";
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(url, uname, upass);
		}
		catch(Exception e) {}
		return con;
	}
}
