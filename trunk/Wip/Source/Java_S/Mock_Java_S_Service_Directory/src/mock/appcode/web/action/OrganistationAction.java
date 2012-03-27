package mock.appcode.web.action;

import java.util.ArrayList;
import java.util.List;
import mock.appcode.common.valueobjects.OrganistationVO;
import mock.appcode.dao.daointerface.OrganistationDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

public class OrganistationAction extends ActionSupport {

	private List<OrganistationVO> listOrgByActive = null;

	public String addOrganistation() {
		return "success";
	}

	public String setOrganistationIsActive() {
		return SUCCESS;
	}

	public String setOrganistationIsInActive() {
		return SUCCESS;
	}

	public String amendOrganistation() {
		return SUCCESS;
	}

	public String getOrganistationByActive() {
		try {
			listOrgByActive = new OrganistationDAOImpl().getByActive();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "success";
	}

	public String getOrganistationByInActive() {
		return SUCCESS;
	}

	public String getAll() {
		return SUCCESS;
	}

	public String searchByNumeric() {
		return SUCCESS;
	}

	public String searchByCharacter() {
		return SUCCESS;
	}

}
