package mock.appcode.web.action;

import java.util.ArrayList;
import java.util.List;
import mock.appcode.common.valueobjects.OrganisationVO;
import mock.appcode.dao.daointerface.OrganisationDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

public class OrganisationAction extends ActionSupport {

	private List<OrganisationVO> listOrgByActive = null;

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
			listOrgByActive = new OrganisationDAOImpl().getByActive();
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
