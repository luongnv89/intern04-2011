package mock.appcode.web.filter;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ValidationAware;
import com.opensymphony.xwork2.Action;

public class AuthorizationInterceptor extends AbstractInterceptor {

	private static final String ACCOUNT = "ACCOUNT";
	private static final String HTTP_REQUEST = "http_request";

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
				
		Map<String, Object> session = invocation.getInvocationContext()
				.getSession();
		if (session.get(ACCOUNT) == null) {
			this.addActionError(invocation, "You must be login to access this page ");
			return Action.ERROR;
		}
		System.out.println("Khong co lay duoc gia tri cua session");
		return invocation.invoke();
	}

	private void addActionError(ActionInvocation invocation, String message) {
		Object action = invocation.getAction();
		if (action instanceof ValidationAware) {
			((ValidationAware) action).addActionError(message);
		}
	}

}
