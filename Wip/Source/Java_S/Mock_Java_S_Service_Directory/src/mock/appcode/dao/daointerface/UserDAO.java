package mock.appcode.dao.daointerface;

import mock.appcode.common.valueobjects.UserVO;

public interface UserDAO {

	public boolean authenticate(String account, String password);
	public void amend(UserVO newUser, String account);
}
