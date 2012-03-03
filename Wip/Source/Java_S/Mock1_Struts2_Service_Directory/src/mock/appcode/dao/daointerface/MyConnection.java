package mock.appcode.dao.daointerface;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConnection {
	Connection con = null;

	public Connection getMyConnection() throws SQLException {

		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url = "jdbc:sqlserver://localhost:1433;databaseName=Service_Directory";
			con = DriverManager.getConnection(url, "sa", "123456");
			System.out.println("Da ket noi thanh cong");
			return con;

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Khong the ket noi");
		}
		return null;
	}

}
