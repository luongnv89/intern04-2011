package mock.appcode.dao.daointerface;

import java.util.List;

public interface IDAO<T> {
	public List<T> getAll() throws Exception;

	public void addNew(T entity) throws Exception;

	public void amend(T entity,String str) throws Exception;
}