package govclinic.connection;

import java.sql.*;

public class ConnectionManager {
	static Connection con;
	private static final String DB_DRIVER = "com.mysql.jdbc.Driver";
	private static final String DB_CONNECTION = "jdbc:mysql://ec2-34-194-158-176.compute-1.amazonaws.com/dabpdt7nnn5pcf";
	private static final String DB_USER = "jhellpphszhpqs";
	public static final String DB_PASSWORD = "3c54c88485613de4e1d5e9be2e5511f33352ffb9f5b869197c1d0192ff37b2af";
	public static Connection getConnection() {
		try {
			//1. load the driver
			Class.forName(DB_DRIVER);
			try {
				//2. create connection
				con = DriverManager.getConnection(DB_CONNECTION,DB_USER,DB_PASSWORD);
				System.out.println("Connected");
			}
			catch (SQLException ex) {
				ex.printStackTrace();
			}

		}
		catch  (ClassNotFoundException e) {
			System.out.println(e);
		}
		return con;
	}
}
