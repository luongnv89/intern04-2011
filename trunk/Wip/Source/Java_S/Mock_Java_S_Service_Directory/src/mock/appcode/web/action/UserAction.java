package mock.appcode.web.action;

import mock.appcode.common.utility.Users;
import mock.appcode.dao.daointerface.UserDAO;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	private String account;
	private String password;

	public String doLogin() throws Exception {
		UserDAO userDAO = new UserDAO();
		Users user = userDAO.authenticate(account, password);
		if (user!=null) {
			return SUCCESS;
		}

		return "errorlogin";

	}

}
