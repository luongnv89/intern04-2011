package mock.appcode.dao.daointerface.organistations;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import mock.appcode.common.utility.*;

import mock.appcode.dao.daointerface.MyConnection;

public class DAO_Organistation {

	public static List<Organistations> showOrgnistation() {
		PreparedStatement ps = null;
		ResultSet rs = null;
		Connection con = null;
		try {
			MyConnection myCon = new MyConnection();
			con = myCon.getMyConnection();
			String sql = "SELECT * FROM Organistation  ";
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			List<Organistations> result = new ArrayList<Organistations>();
			while (rs.next()) {
				String orgid = rs.getString("OrgID");
				String orgname = rs.getString("OrgName");
				String contactid = rs.getString("ContactID");
				String serviceid = rs.getString("ServiceID");
				String shortdescription = rs.getString("OrgShorDescription");
				String addressid = rs.getString("AddressID");
				String sic = rs.getString("SIC");
				String refid = rs.getString("RefID");
				String fulldescription = rs.getString("OrgFullDescription");
				String phone = rs.getString("Phone");
				String fax = rs.getString("Fax");
				String mail = rs.getString("Mail");
				String webaddress = rs.getString("WebAddress");
				String charitynumber = rs.getString("CharityNumber");
				String companynumber = rs.getString("CompanyNumber");
				byte statusactive = rs.getByte("StatusActive");
				byte statuspreferred = rs.getByte("StatusPreferred");
				byte statusexpression = rs.getByte("StatusExpression");
				Organistations org = new Organistations(orgid, orgname,
						contactid, serviceid, shortdescription, addressid, sic,
						refid, fulldescription, phone, fax, mail, webaddress,
						charitynumber, companynumber, statusactive,
						statuspreferred, statusexpression);
				result.add(org);
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

	public boolean addOrganistation(String orgID, String orgName,
			String contactID, String serviceID, String shortDescription,
			String addressID, String sic, String refID, String fullDescription,
			String phone, String fax, String email, String webAddress,
			String charityNumber, String companyNumber, byte statusActive,
			byte statusPreferred, byte statusExpression) {
		PreparedStatement ps = null;
		int rs;
		Connection con = null;
		try {
			MyConnection myCon = new MyConnection();
			con = myCon.getMyConnection();
			String sql = "INSERT INTO Organistation values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, orgID);
			ps.setString(2, orgName);
			ps.setString(3, contactID);
			ps.setString(4, serviceID);
			ps.setString(5, shortDescription);
			ps.setString(6, addressID);
			ps.setString(7, sic);
			ps.setString(8, refID);
			ps.setString(9, fullDescription);
			ps.setString(10, phone);
			ps.setString(11, fax);
			ps.setString(12, email);
			ps.setString(13, webAddress);
			ps.setString(14, charityNumber);
			ps.setString(15, companyNumber);
			ps.setByte(16, statusActive);
			ps.setByte(17, statusPreferred);
			ps.setByte(18, statusExpression);

			rs = ps.executeUpdate();
			if (rs > 0) {
				return true;
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			try {

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

	public boolean amendOrganistation() {
		return false;
	}

	public boolean setIsActive() {
		return false;
	}

}
