package mock.appcode.web.action.organistation;

import java.util.List;

import mock.appcode.common.utility.Organistations;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionSupport;

public class ViewAllOrganistationAction extends ActionSupport {
	private List<Organistations> allOrganistation;

	public String execute() throws Exception {
		return "success";
	}
}
