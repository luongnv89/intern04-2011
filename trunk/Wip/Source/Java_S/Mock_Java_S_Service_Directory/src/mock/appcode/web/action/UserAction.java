package mock.appcode.web.action;

import com.opensymphony.xwork2.ActionSupport;
import mock.appcode.dao.daointerface.UserDAO;

public class UserAction extends ActionSupport {

	private String account;
	private String password;

	public String doLogin() throws Exception {
		UserDAO userDAO = new UserDAO();
		boolean result = userDAO.authenticate(account, password);
		if (result) {
			return SUCCESS;
		}

		return "errorlogin";

	}

}
