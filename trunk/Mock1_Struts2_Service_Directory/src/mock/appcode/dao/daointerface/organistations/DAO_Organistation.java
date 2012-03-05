package mock.appcode.dao.daointerface.organistations;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mock.appcode.common.utility.Users;
import mock.appcode.dao.daointerface.MyConnection;

public class DAO_Organistation {

	public boolean addOrgnistation(String orgId) {
		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;
		try {
			MyConnection myCon = new MyConnection();
			con = myCon.getMyConnection();
			String sql = "INSERT INTO Organistation  ";
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
			return true;
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
		return false;
	}

	public boolean showOrganistation() {
		return false;
	}

	public boolean amendOrganistation() {
		return false;
	}

	public boolean isActive() {
		return false;
	}

}
