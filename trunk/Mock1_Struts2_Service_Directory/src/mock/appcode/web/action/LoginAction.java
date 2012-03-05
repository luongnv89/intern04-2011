package mock.appcode.web.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import mock.appcode.dao.daointerface.Operations;

public class LoginAction extends ActionSupport{
	private String account;
	private String password;

	public String execute() throws Exception {
		boolean result = new Operations().checkLogin(account, password);

		if (result) {
			Map<String, String> session = ActionContext.getContext()
					.getSession();
			session.put("USER", account);
			return "success";
		} else {

			return "errorlogin";
		}

	}

	public void validate() {
		if (getAccount().length() == 0) {
			addFieldError("account", "Account is required");
		}
		if (getPassword().length() == 0) {
			addFieldError("password", getText("password.required"));
		}
	}

	public String showOrganistation() {
		return "org";
	}

	public String showService() {
		return "service";
	}

	public LoginAction() {
		super();
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

}
