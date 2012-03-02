package mock.appcode.dao.daointerface;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mock.appcode.common.utility.Users;

public class Operations {
	public boolean checkLogin(String acc, String pass) throws Exception {
		PreparedStatement ps = null;
		 ResultSet rs = null;
		 Connection con = null;
		try {
			MyConnection mycon = new MyConnection();
			 con = mycon.getMyConnection();

			String sql = "Select * From User Where Account = ? and Password = ?";
			ps = con.prepareStatement(sql);

			ps.setString(1, acc);
			ps.setString(2, pass);

			 rs = ps.executeQuery();

			if (rs.next()) {
				return true;
			}

		} catch (SQLException e) {
			e.printStackTrace();

			System.out.println("connect fail");
		} finally {
			try {
				if (con != null) {
					con.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return false;

	}

	public static List<Users> showListUser() {
		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;
		try {
			MyConnection myCon = new MyConnection();
			con = myCon.getMyConnection();
			String sql = "SELECT * FROM User ";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			List<Users> result = new ArrayList<Users>();
			while (rs.next()) {
				String userid = rs.getString("UserID");
				String account = rs.getString("Account");
				String email = rs.getString("Email");
				String role = rs.getString("Role");
				String password = rs.getString("Password");
				Users user = new Users(userid, account, email, role, password);
				result.add(user);
			}
			return result;
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (con != null) {
					con.close();
				}
				if (ps != null) {
					ps.close();
				}

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
}
