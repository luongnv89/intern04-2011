package mock.appcode.dao.daointerface;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import mock.appcode.common.utility.HibernateUtil;
import mock.appcode.common.valueobjects.Organistation;



public class OrganistationDAO extends HibernateUtil {

	private Session session = null;

	public OrganistationDAO() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		this.session = session;
	}

	// Ham lay ve tat ca cac ban ghi trong Table Organistation
	// Gia tri tra ve la 1 doi tuong mang co kieu la Organistation
	public Organistation[] getAll() throws Exception {

		// TODO Auto-generated method stub
		try {

			session.beginTransaction();
			Query query = (Query) session.createQuery("from Organistation");
			List queryResult = query.list();
			Organistation[] organistationArray = new Organistation[queryResult
					.size()];
			queryResult.toArray(organistationArray);
			session.flush();
			session.getTransaction().commit();
			return organistationArray;
		} catch (Exception e) {
			// TODO: handle exception
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public void addNew(Organistation organistation) throws Exception {
		try {

			session.beginTransaction();
			session.save(organistation);
			session.flush();
			session.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
			e.printStackTrace();
		}

	}

	public void amend(Organistation newOrganistation, String id)
			throws Exception {
		try {
			session.beginTransaction();
			Organistation organistation = (Organistation) session.get(
					Organistation.class, id);
			organistation.setOrgName(newOrganistation.getOrgFullDescription());
			session.update(organistation);
			session.flush();
			session.getTransaction().commit();
		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
		}
	}

	public Organistation[] getByActive() throws Exception {
		try {

			session.beginTransaction();
			Query query = (Query) session.createQuery("from Organistation org where org.statusActive='1'");
			List queryResult = query.list();
			Organistation[] organistationArray = new Organistation[queryResult
					.size()];
			queryResult.toArray(organistationArray);
			session.flush();
			session.getTransaction().commit();
			return organistationArray;
		} catch (Exception e) {
			// TODO: handle exception
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
			e.printStackTrace();
		}
		return null;
	}

	public void setInActive(String id) throws Exception {
		// TODO Auto-generated method stub

	}

	public void setActive(String id) throws Exception {
		// TODO Auto-generated method stub

	}

}
