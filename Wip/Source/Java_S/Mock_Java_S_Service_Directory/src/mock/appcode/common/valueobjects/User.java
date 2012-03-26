package mock.appcode.common.valueobjects;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="User2")
public class User implements Serializable{

	private String userid;
	private String account;
	private String email;
	private String role;
	private String password;

	public User(String userid, String account, String email, String role,
			String password) {
		this.userid = userid;
		this.account = account;
		this.email = email;
		this.role = role;
		this.password = password;
	}

	public User() {
	}

	@Id
	@GeneratedValue
	@Column(name="UserID")
	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Column(name="Account")
	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	@Column(name="Email")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name="Role")
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Column(name="Password")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
