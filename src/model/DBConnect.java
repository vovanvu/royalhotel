package model;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	public static Connection getConnection() {
		Connection connection = null;
		String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String url = "jdbc:sqlserver://localhost:1433;databaseName=QLKS";
		String user = "sa";
		 String pass = "kid159753";
		try {
			Class.forName(driver);
			connection = DriverManager.getConnection(url, user, pass);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
	 public static void main(String[] args) {
	 System.out.println(getConnection());
	 }

}
