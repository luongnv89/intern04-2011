package mock.appcode.web.action;

import com.opensymphony.xwork2.ActionSupport;

public class OrganistationAction extends ActionSupport {

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
		return "success";
	}

	public String getOrganistationByInActive() {
		return SUCCESS;
	}

	public String getAll() {
		return SUCCESS;
	}
	
	public String searchByNumeric(){
		return SUCCESS;
	}
	
	public String searchByCharacter(){
		return SUCCESS;
	}
	
}
