package mock.appcode.web.action;

import java.util.ArrayList;
import java.util.List;

import mock.appcode.common.valueobjects.AddressVO;
import mock.appcode.common.valueobjects.OrganisationVO;
import mock.appcode.dao.daointerface.OrganisationDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

public class OrganisationAction extends ActionSupport {

	private List<OrganisationVO> listOrgByActive;

	public List<OrganisationVO> getListOrgByActive() {
		return listOrgByActive;
	}

	public void setListOrgByActive(List<OrganisationVO> listOrgByActive) {
		this.listOrgByActive = listOrgByActive;
	}

	public String addOrganisation() {
		return "success";
	}

	public String setOrganisationIsActive() {
		return SUCCESS;
	}

	public String setOrganisationIsInActive() {
		return SUCCESS;
	}

	public String amendOrganisation() {
		return SUCCESS;
	}

	public String getOrganisationByActive() {
			try {
				listOrgByActive = new OrganisationDAOImpl().getByActive(1);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

				return "success";
	}

	public String getOrganisationByInActive() {
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
