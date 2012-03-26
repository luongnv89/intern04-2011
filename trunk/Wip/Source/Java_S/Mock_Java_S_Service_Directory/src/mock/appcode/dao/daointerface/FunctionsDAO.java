package mock.appcode.dao.daointerface;

import org.hibernate.Session;
import org.hibernate.Query;

import mock.appcode.common.utility.HibernateUtil;

public class FunctionsDAO {
	private Session session;

	public FunctionsDAO() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		this.session = session;
	}
	
	
}
