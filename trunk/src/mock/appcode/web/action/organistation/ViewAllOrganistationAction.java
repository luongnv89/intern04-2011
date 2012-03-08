package mock.appcode.web.action.organistation;

import java.util.List;

import mock.appcode.common.utility.Organistations;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionSupport;
import mock.appcode.dao.daointerface.organistations.*;

public class ViewAllOrganistationAction extends ActionSupport {
	private List<Organistations> listOrganistation;

	public String execute() throws Exception {
		listOrganistation = DAO_Organistation.getAllOrgnistation();
		return "success";
	}
}
