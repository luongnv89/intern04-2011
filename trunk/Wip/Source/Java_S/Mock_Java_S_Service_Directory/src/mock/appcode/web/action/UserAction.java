package mock.appcode.web.action;

import mock.appcode.common.utility.User;
import mock.appcode.dao.daointerface.UserDAO;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven{

	private String account = null;
	private String password = null;

	public String doLogin() throws Exception {
		UserDAO userDAO = new UserDAO();
		boolean result = userDAO.authenticate(getAccount(), getPassword());
		if (result) {
			return SUCCESS;
		}

		return "errorlogin";

	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public Object getModel() {
		// TODO Auto-generated method stub
		return null;
	}

	// public void validate() {
	// if (account.length() == 0) {
	// this.addFieldError("account", "account is required");
	// }
	// if (password.length() == 0) {
	// this.addFieldError("password", "password is required");
	// }
	// }

}
