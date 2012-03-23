package mock.appcode.dao.daointerface;

import java.util.List;

public interface IDAO {
	public List<Object> getAll() throws Exception;

	public void addNew(Object entity) throws Exception;

	public void amend(Object entity, String id) throws Exception;

	public void getByActive() throws Exception;

	public void setInActive(String id) throws Exception;

	public void setActive(String id) throws Exception;
}