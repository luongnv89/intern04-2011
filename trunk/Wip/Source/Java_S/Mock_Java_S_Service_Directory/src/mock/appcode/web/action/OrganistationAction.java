package mock.appcode.web.action;

import com.opensymphony.xwork2.ActionSupport;

public class OrganistationAction extends ActionSupport {

	public String getAll()  {
		return "getAllSuccess";
	}

	public String add()  {
		return SUCCESS;
	}

	public String setActive()  {
		return SUCCESS;
	}

	public String setInActive() {
		return SUCCESS;
	}

	public String amend()  {
		return SUCCESS;
	}

	public String getByActive()  {
		return SUCCESS;
	}
}
