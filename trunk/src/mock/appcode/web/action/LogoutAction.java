package mock.appcode.web.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport {

	public String logout() {
		Map session=ActionContext.getContext().getSession();
		session.remove("USER");
		return "logout_success";
	}

}
