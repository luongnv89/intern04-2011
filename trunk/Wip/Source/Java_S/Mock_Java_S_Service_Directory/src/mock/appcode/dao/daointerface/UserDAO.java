package mock.appcode.dao.daointerface;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;

import mock.appcode.common.utility.HibernateListener;
import mock.appcode.common.utility.Users;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import mock.appcode.common.utility.HibernateUtil;

public class UserDAO extends HibernateDaoSupport implements IDAO<Users> {

	private Session session;
	Users user = null;

	public UserDAO() {
		SessionFactory factory = HibernateUtil.getSessionFactory();
		this.session = factory.getCurrentSession();
	}

	public Users authenticate(String account, String password) {
		try {
			session.getTransaction().begin();
			String sql = "from User where account = ? and password = ?";
			Query query = (Query) session.createQuery(sql);
			query.setString(0, account);
			query.setString(1, password);
			Users result = (Users) query.uniqueResult();
			session.flush();
			session.getTransaction().commit();
			System.out.print(result.toString());
			return result;

		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public Users[] findByAccount(String account) {
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

	public void amend(Users newUser, String account) {
		try {
			session.getTransaction().begin();
			Users user = (Users) session.get(Users.class, account);

			user.setAccount(newUser.getAccount());
			user.setEmail(newUser.getEmail());
			user.setPassword(newUser.getPassword());
			user.setRole(newUser.getPassword());

			session.update(user);
			session.flush();
			session.getTransaction().commit();

		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
			e.printStackTrace();
		}
	}

	@Override
	public List<Users> getAll() throws Exception {
		List<Users> list = null;
		try {
			list = getHibernateTemplate().find("from Users2");
			return list;
		} catch (Exception ex) {
			throw new Exception("Error from DAO: " + ex.getMessage());
		}
	}

	@Override
	public void addNew(Users entity) throws Exception {
		SessionFactory sessionFactory = (SessionFactory) ServletActionContext
				.getServletContext().getAttribute(HibernateListener.KEY_NAME);

		Session session = sessionFactory.openSession();

		// save it

		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();

		// reload the customer list
	}

}
