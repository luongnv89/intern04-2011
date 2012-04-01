package mock.appcode.web.action;

import java.util.List;

import mock.appcode.common.valueobjects.OrganisationVO;
import mock.appcode.dao.daointerface.OrganisationDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

public class OrganisationAction extends ActionSupport {

	private List<OrganisationVO> listOrgByActive;
	private List<OrganisationVO> listOrgAll;

	private static int pageSize=5;
	private static int currentPageNumber =1;
	
	private int statusCheckBoxIncludeInActive;
	
	private int firstPage;
	private int backPage;
	private int nextPage;
	private int endPage;
	
	private static int countByActive;
	private static int countByAll;
	
	private static int pageNumberByActive;
	private static int pageNumberAll;
	

	public String getOrganisationsByActive() 
	{
			try {
				statusCheckBoxIncludeInActive=0;
				countByActive=new OrganisationDAOImpl().getOrganisationsByActive().size();
				pageNumberByActive=countByActive/pageSize;
				
				if(firstPage==1)
				{
					listOrgByActive = new OrganisationDAOImpl().getOrganisationsByActive(1);
					currentPageNumber=1;
				}
				
				else if(backPage==2)
				{
					if(currentPageNumber>1)
					{
						listOrgByActive=new OrganisationDAOImpl().getOrganisationsByActive(currentPageNumber-1);
						currentPageNumber--;
					}
					else
					{
						listOrgByActive = new OrganisationDAOImpl().getOrganisationsByActive(1);
					}
				}
				
				else if(nextPage==4)
				{
					if(currentPageNumber<pageNumberByActive)
						{
							listOrgByActive = new OrganisationDAOImpl().getOrganisationsByActive(currentPageNumber+1);
							currentPageNumber++;
						}	
					else
						{
							listOrgByActive = new OrganisationDAOImpl().getOrganisationsByActive(pageNumberByActive);
						}
				}
				
				else if(endPage==5)
				{
					listOrgByActive = new OrganisationDAOImpl().getOrganisationsByActive(pageNumberByActive);
					currentPageNumber=pageNumberByActive;
				}
				
				else {
				listOrgByActive = new OrganisationDAOImpl().getOrganisationsByActive(1);
				currentPageNumber=1;
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "success";
	}
	
	
	public String getAllOrganisations() 
	{
		statusCheckBoxIncludeInActive=1;
		try {
			countByAll=new OrganisationDAOImpl().getAllOrganisations().size();
			pageNumberAll=countByAll/pageSize;
			
			
				if(firstPage==1)
				{
					listOrgAll = new OrganisationDAOImpl().getAllOrganisations(1);
					currentPageNumber=1;
				}
			
				else if(backPage==2)
				{
					if(currentPageNumber>1)
					{
						listOrgAll=new OrganisationDAOImpl().getAllOrganisations(currentPageNumber-1);
						currentPageNumber--;
					}
					else
					{
						listOrgAll = new OrganisationDAOImpl().getAllOrganisations(1);
						currentPageNumber=1;
					}
				}
			
				else if(nextPage==4)
				{
					if(currentPageNumber<pageNumberAll)
						{
							listOrgAll = new OrganisationDAOImpl().getAllOrganisations(currentPageNumber+1);
							currentPageNumber++;
						}	
					else
						{
							listOrgAll = new OrganisationDAOImpl().getAllOrganisations(pageNumberAll);
							currentPageNumber=pageNumberAll;
						}
				}
			
				else if(endPage==5)
				{
					listOrgAll = new OrganisationDAOImpl().getAllOrganisations(pageNumberAll);
					currentPageNumber=pageNumberAll;
				}
			
				else 
				{
					listOrgAll = new OrganisationDAOImpl().getAllOrganisations(1);
					currentPageNumber=1;
				}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "success";
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
	
	
	public String getOrganisationByInActive() 
	{
		return "success";
	}
	

	
	
	public String searchByNumeric() 
	{
		return SUCCESS;
	}

	public String searchByCharacter() 
	{
		return SUCCESS;
	}

	public static int getCurrentPageNumber() {
		return currentPageNumber;
	}

	public static void setCurrentPageNumber(int currentPageNumber) {
		OrganisationAction.currentPageNumber = currentPageNumber;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int isStatusCheckBoxIncludeInActive() {
		return statusCheckBoxIncludeInActive;
	}

	public void setStatusCheckBoxIncludeInActive(
			int statusCheckBoxIncludeInActive) {
		this.statusCheckBoxIncludeInActive = statusCheckBoxIncludeInActive;
	}

	public int getStatusCheckBoxIncludeInActive() {
		return statusCheckBoxIncludeInActive;
	}

	public int getFirstPage() {
		return firstPage;
	}

	public void setFirstPage(int firstPage) {
		this.firstPage = firstPage;
	}

	public int getBackPage() {
		return backPage;
	}

	public void setBackPage(int backPage) {
		this.backPage = backPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public List<OrganisationVO> getListOrgByActive() {
		return listOrgByActive;
	}

	public void setListOrgByActive(List<OrganisationVO> listOrgByActive) {
		this.listOrgByActive = listOrgByActive;
	}


	public List<OrganisationVO> getListOrgAll() {
		return listOrgAll;
	}


	public void setListOrgAll(List<OrganisationVO> listOrgAll) {
		this.listOrgAll = listOrgAll;
	}


	public static int getPageNumberByActive() {
		return pageNumberByActive;
	}


	public static void setPageNumberByActive(int pageNumberByActive) {
		OrganisationAction.pageNumberByActive = pageNumberByActive;
	}


	public static int getPageNumberAll() {
		return pageNumberAll;
	}


	public static void setPageNumberAll(int pageNumberAll) {
		OrganisationAction.pageNumberAll = pageNumberAll;
	}


	public static int getCountByActive() {
		return countByActive;
	}


	public static void setCountByActive(int countByActive) {
		OrganisationAction.countByActive = countByActive;
	}


	public static int getCountByAll() {
		return countByAll;
	}


	public static void setCountByAll(int countByAll) {
		OrganisationAction.countByAll = countByAll;
	}






		

}
