package dba;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	static int count = 0;
	public static Connection getConnection()
	{++count;
		Connection con=null;
	try 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/appointment?useSSL=false","root","123456789");
		System.out.print("connected "+count);
	}
	catch (Exception e)
	{
		System.out.println("Error "+e);
	}
	return con;
	
	}
public static void main(String args[])
{getConnection();}
}
