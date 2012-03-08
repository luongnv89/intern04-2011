package mock.appcode.common.utility;

public class Users {

	private String userid;
	private String account;
	private String email;
	private String role;
	private String password;

	public Users(String userid, String account, String email, String role,
			String password) {
		this.userid = userid;
		this.account = account;
		this.email = email;
		this.role = role;
		this.password = password;
	}

	public Users() {
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
