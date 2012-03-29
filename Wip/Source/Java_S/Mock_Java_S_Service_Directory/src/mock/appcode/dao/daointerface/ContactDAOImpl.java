package mock.appcode.dao.daointerface;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import mock.appcode.common.utility.HibernateUtil;
import mock.appcode.common.valueobjects.ContactVO;

public class ContactDAOImpl extends HibernateUtil implements ContactDAO{

	private Session session;

	public ContactDAOImpl() {
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		this.session = session;
	}
	
	@Override
	public List<ContactVO> getAll() throws Exception {
		
		try {
			session.beginTransaction();
			Query query = (Query) session.createQuery("from ContactVO");
			List listResult = query.list();
			session.flush();
			session.getTransaction().commit();
			return listResult;
		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
			e.printStackTrace();
		}
		
		return null;
		
	}

}
