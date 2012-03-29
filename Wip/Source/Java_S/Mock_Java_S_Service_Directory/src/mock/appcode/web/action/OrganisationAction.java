package mock.appcode.web.action;

import java.util.ArrayList;
import java.util.List;

import mock.appcode.common.valueobjects.AddressVO;
import mock.appcode.common.valueobjects.OrganisationVO;
import mock.appcode.dao.daointerface.OrganisationDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

public class OrganisationAction extends ActionSupport {

// ----------------------------------- PROPERTIES ----------------------------------///
	
	
	private static List<OrganisationVO> listOrgByActive;
	private List<AddressVO> listAddressVO;
	
	// Organisation Bean
	private OrganisationVO org;
	
	// Address Bean
	private AddressVO address;
	
	
	
	
//-----------------------------------    METHOD ----------------------------------///
	
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

	
	// action hien thi man hinh Add Organisation  
	
	
	public String addOrganistation() {
		return "success";
	}
	
	// action save Organisation 

	public String saveOrganisation() {
		
		
		System.out.println(getOrg());
		System.out.println(getAddress());
		
		org.setAddressVO(getAddress());
		
		OrganisationDAOImpl orgImpl = new OrganisationDAOImpl();
		try {
			
			orgImpl.addNew(org);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "success";
	}
	
	
	
	public String setOrganistationIsActive() {
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

	
// ------------------------------------------ GETTER , SETTER --------------------------------//
	
	public OrganisationVO getOrg() {
		return org;
	}

	public void setOrg(OrganisationVO org) {
		this.org = org;
	}

	public AddressVO getAddress() {
		return address;
	}

	public void setAddress(AddressVO address) {
		this.address = address;
	}
	
	


	
}
