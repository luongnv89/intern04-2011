package mock.appcode.dao.daointerface;

import java.util.List;

import mock.appcode.common.valueobjects.ContactVO;


public interface ContactDAO {

	public List<ContactVO> getAll() throws Exception;
}
