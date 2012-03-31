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

	private int pageSize=5;
	private static int currentPageNumber =0;
	private int paramFirst;
	private int paramBack;
	private int paramNext;
	
	private int paramEnd;
	
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
				
				int count=new OrganisationDAOImpl().getByActive().size();
				
				int pageNumber=count/pageSize;
				
				if(currentPageNumber==0){
					currentPageNumber=1;
				listOrgByActive = new OrganisationDAOImpl().getByActive(1);
				}
				
				
				else if(paramFirst ==1)
				{
					listOrgByActive = new OrganisationDAOImpl().getByActive(1);
					currentPageNumber = 1;
				}
					
				
				else if(paramBack == 2)
				{
					if(currentPageNumber>1)
					{
						listOrgByActive=new OrganisationDAOImpl().getByActive(getCurrentPageNumber()-1);
						currentPageNumber--;
					}
					else
					{
						listOrgByActive = new OrganisationDAOImpl().getByActive(1);
					}
				}
				
				
				else if(paramNext ==4)
				{
					if(currentPageNumber<pageNumber)
					{
						listOrgByActive = new OrganisationDAOImpl().getByActive(getCurrentPageNumber()+1);
						currentPageNumber++;
					}
					else
					{
						listOrgByActive = new OrganisationDAOImpl().getByActive(pageNumber);
					}
				}
				
			
				else if(paramEnd ==5)
				{
					listOrgByActive = new OrganisationDAOImpl().getByActive(pageNumber);
					currentPageNumber=pageNumber;
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

	public int getParamFirst() {
		return paramFirst;
	}

	public void setParamFirst(int paramFirst) {
		this.paramFirst = paramFirst;
	}

	public int getParamEnd() {
		return paramEnd;
	}

	public void setParamEnd(int paramEnd) {
		this.paramEnd = paramEnd;
	}


		

}
