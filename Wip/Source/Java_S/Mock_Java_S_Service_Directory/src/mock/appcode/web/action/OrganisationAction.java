package mock.appcode.web.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import mock.appcode.common.valueobjects.AddressVO;
import mock.appcode.common.valueobjects.OrganisationVO;
import mock.appcode.dao.daointerface.OrganisationDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

public class OrganisationAction extends ActionSupport {

	private List<OrganisationVO> listOrgByActive;

	private static int currentPageNumber =0;
	private int paramNext;
	private int paramBack;
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
				
				if(currentPageNumber==0){
					currentPageNumber=1;
				listOrgByActive = new OrganisationDAOImpl().getByActive(1);
				}
				
				else if(paramNext ==4){
				listOrgByActive = new OrganisationDAOImpl().getByActive(getCurrentPageNumber()+1);
				currentPageNumber++;
				}
				
				else if(paramBack == 2){
					listOrgByActive=new OrganisationDAOImpl().getByActive(getCurrentPageNumber()-1);
					currentPageNumber--;
				}
				
					
				
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

				return "success";
	}

	public String getOrganisationByActiveNext() {
		try {
			listOrgByActive = new OrganisationDAOImpl().getByActive(2);
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

	public static int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public static void setCurrentPageNumber(int currentPageNumber) {
		currentPageNumber = currentPageNumber;
	}

	public int getParamNext() {
		return paramNext;
	}

	public void setParamNext(int paramNext) {
		this.paramNext = paramNext;
	}

	public int getParamBack() {
		return paramBack;
	}

	public void setParamBack(int paramBack) {
		this.paramBack = paramBack;
	}


		

}
