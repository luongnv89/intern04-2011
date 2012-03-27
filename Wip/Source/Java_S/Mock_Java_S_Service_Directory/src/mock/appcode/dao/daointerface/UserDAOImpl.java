package mock.appcode.dao.daointerface;

import java.util.List;

import mock.appcode.common.utility.HibernateUtil;
import mock.appcode.common.valueobjects.UserVO;

import org.hibernate.Query;
import org.hibernate.Session;

public class UserDAOImpl extends HibernateUtil {

	private Session session = null;
	UserVO userVO = null;

	public UserDAOImpl() {

	}

	//Ham xac thuc tai khoan nguoi dung
	public boolean authenticate(String account, String password) {
		try {
			Session session = HibernateUtil.getSessionFactory()
					.openSession();
			session.beginTransaction();

			Query query = (Query) session
					.createQuery("from UserVO u where u.account='" + account
							+ "' and u.password='" + password + "'");
			Object result = null;
			result = query.uniqueResult();
			session.flush();
			session.getTransaction().commit();
			if (result != null) {
				return true;
			}
		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
			e.printStackTrace();
			System.out.println("++++++++++co loi+++++++++++++++");
		}
		return false;
	}

	//Tim kiem nguoi dung theo tai khoan account
	public UserVO[] findByAccount(String account) {
		try {
			session.getTransaction().begin();
			String sql = "from User2 where account like ?";
			Query query = session.createQuery(sql);
			query.setString(0, "%" + account + "%");
			List resultList = query.list();
		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	//Ham chinh sua thong tin cua 1 nguoi dung
	public void amend(UserVO newUser, String account) {
		try {
			session.getTransaction().begin();
			UserVO userVO = (UserVO) session.get(UserVO.class, account);

			userVO.setAccount(newUser.getAccount());
			userVO.setEmail(newUser.getEmail());
			userVO.setPassword(newUser.getPassword());
			userVO.setRole(newUser.getPassword());

			session.update(userVO);
			session.flush();
			session.getTransaction().commit();

		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
			e.printStackTrace();
		}
	}

}
