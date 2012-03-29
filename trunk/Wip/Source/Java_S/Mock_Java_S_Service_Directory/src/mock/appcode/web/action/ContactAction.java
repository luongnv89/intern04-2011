package mock.appcode.web.action;

import java.util.List;

import mock.appcode.common.valueobjects.ContactVO;
import mock.appcode.dao.daointerface.ContactDAOImpl;

import com.opensymphony.xwork2.ActionSupport;

public class ContactAction extends ActionSupport {

	private List<ContactVO> listContact;
	
	
	public String getContact () {
		
		try {
			
			this.setListContact(new ContactDAOImpl().getAll());
			
			if(listContact != null) {
				
				return "success";
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "fail";
	}

	public List<ContactVO> getListContact() {
		return listContact;
	}

	public void setListContact(List<ContactVO> listContact) {
		this.listContact = listContact;
	}
	
	
}
