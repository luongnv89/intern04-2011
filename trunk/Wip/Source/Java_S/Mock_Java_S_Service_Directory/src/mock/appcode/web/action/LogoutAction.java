package mock.appcode.web.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport {

	public String logout() {
		Map<String, Object> session=ActionContext.getContext().getSession();
		session.remove("USER");
		return "logout_success";
	}

}
