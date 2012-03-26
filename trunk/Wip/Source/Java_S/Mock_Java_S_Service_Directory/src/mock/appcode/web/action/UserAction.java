package mock.appcode.web.action;

import java.util.Map;

import mock.appcode.dao.daointerface.UserDAO;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	private String account = null;
	private String password = null;

	public String doLogin() throws Exception {
		UserDAO userDAO = new UserDAO();
		boolean result = userDAO.authenticate(getAccount(), getPassword());
		if (result) {
			Map<String, Object> session = ActionContext.getContext()
					.getSession();
			session.put("ACCOUNT", getAccount());
			return SUCCESS;
		}

		return ERROR;

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

	// public void validate() {
	// if (account.length() == 0) {
	// this.addFieldError("account", "account is required");
	// }
	// if (password.length() == 0) {
	// this.addFieldError("password", "password is required");
	// }
	// }

}
