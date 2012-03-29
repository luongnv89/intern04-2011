package mock.appcode.web.action;

import java.util.ArrayList;
import java.util.List;

import mock.appcode.common.valueobjects.AddressVO;
import mock.appcode.common.valueobjects.OrganisationVO;
import mock.appcode.dao.daointerface.OrganisationDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

public class OrganisationAction extends ActionSupport {

	private List<OrganisationVO> listOrgByActive;
	private List<AddressVO> listAddressVO=new ArrayList<AddressVO>();
	

	public  List<AddressVO> getListAddressVO() {
		return listAddressVO;
	}

	public  void setListAddressVO(List<AddressVO> listAddressVO) {
		listAddressVO = listAddressVO;
	}

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
			listOrgByActive = new OrganisationDAOImpl().getByActive();
			List<AddressVO> myList = null;
			for(int i=0;i<listOrgByActive.size();i++)
			{
				AddressVO advo=listOrgByActive.get(i).getAddressVO();
				listAddressVO.add(advo);
			}
			
				
			if (listOrgByActive != null) {
				return "success";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "fail";
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
