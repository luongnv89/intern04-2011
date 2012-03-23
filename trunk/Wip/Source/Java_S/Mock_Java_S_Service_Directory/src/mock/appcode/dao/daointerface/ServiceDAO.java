package mock.appcode.dao.daointerface;

import java.util.List;

import mock.appcode.common.utility.HibernateUtil;

public class ServiceDAO extends HibernateUtil implements IDAO {

	@Override
	public List<Object> getAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void addNew(Object entity) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void amend(Object entity, String str) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void getByActive() throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setInActive(String id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setActive(String id) throws Exception {
		// TODO Auto-generated method stub
		
	}



}
