package mock.appcode.web.action;

import java.util.ArrayList;
import java.util.List;



import mock.appcode.common.utility.Users;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import mock.appcode.dao.daointerface.UserDAO;

public class UserAction extends ActionSupport implements ModelDriven {

	Users user = new Users();
	List<Users> userList = new ArrayList<Users>();
	private String account;
	private String password;

	public String doLogin() throws Exception {
		UserDAO userDAO = new UserDAO();
		if (userDAO.authenticate(account, password) != null) {
			return SUCCESS;
		}

		return LOGIN;

	}

	public Object getModel() {
		return user;
	}

	public List<Users> getUserList() {
		return userList;
	}

	public void setUserList(List<Users> userList) {
		this.userList = userList;
	}

}
