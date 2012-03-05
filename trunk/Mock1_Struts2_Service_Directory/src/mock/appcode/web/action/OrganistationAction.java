package mock.appcode.web.action;

import java.util.Map;

import mock.appcode.dao.daointerface.Operations;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class OrganistationAction extends ActionSupport {

	public String execute() throws Exception {
		return "";

	}

	public String addOrganistation() throws Exception {
		return "insertOrganistationSuccess";
	}

	public String showOrganistation() throws Exception {
		return "showOrganistationSuccess";
	}

	public String amendOrganistation() throws Exception {
		return "amendOrganistationSuccess";
	}

	public String isActiveOrganistation() throws Exception {
		return "isActiveSuccess";
	}

}
