package mock.appcode.web.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import mock.appcode.dao.daointerface.Operations;

public class LoginAction extends ActionSupport {
	private String account;
	private String password;

	public String authenticate() throws Exception {
		boolean result = new Operations().checkLogin(account, password);

		if (result) {
			Map<Object, Object> session = ActionContext.getContext()
					.getSession();
			session.put("USER", account);
			return "success";
		} else {
			addActionError(getText("error.login"));
			return "error";
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
