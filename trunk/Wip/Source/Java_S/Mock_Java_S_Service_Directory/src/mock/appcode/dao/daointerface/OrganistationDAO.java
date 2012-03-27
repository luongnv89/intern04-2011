package mock.appcode.dao.daointerface;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import mock.appcode.common.utility.HibernateUtil;
import mock.appcode.common.valueobjects.OrganistationVO;

public class OrganistationDAO extends HibernateUtil {

	private Session session;

	public OrganistationDAO() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		this.session = session;
	}

	// Ham lay ve tat ca cac ban ghi trong Table OrganistationVO
	// Gia tri tra ve la 1 doi tuong mang co kieu la OrganistationVO
	public List<OrganistationVO> getAll() throws Exception {

		try {
			session.beginTransaction();
			Query query = (Query) session.createQuery("from OrganistationVO");
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

	public void addNew(OrganistationVO organistationVO) throws Exception {
		try {

			session.beginTransaction();
			session.save(organistationVO);
			session.flush();
			session.getTransaction().commit();
		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
			e.printStackTrace();
		}

	}

	public void amend(OrganistationVO newOrganistation, String id)
			throws Exception {
		try {
			session.beginTransaction();
			OrganistationVO organistationVO = (OrganistationVO) session.get(
					OrganistationVO.class, id);
			organistationVO.setOrgName(newOrganistation.getOrgFullDescription());
			session.update(organistationVO);
			session.flush();
			session.getTransaction().commit();
		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
		}
	}

	public List<OrganistationVO> getByActive() throws Exception {
		try {
			session.beginTransaction();
			Query query = (Query) session
					.createQuery("from OrganistationVO org where org.statusActive='1'");
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

	public List<OrganistationVO> getByInActive() throws Exception {
		try {
			session.beginTransaction();
			Query query = (Query) session
					.createQuery("from OrganistationVO org where org.statusActive='0'");
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

	public void setInActive(OrganistationVO newOrganistation, String id)
			throws Exception {
		try {
			session.beginTransaction();
			OrganistationVO organistationVO = (OrganistationVO) session.get(
					OrganistationVO.class, id);
			organistationVO.setStatusActive(newOrganistation.getStatusActive());
			session.update(organistationVO);
			session.flush();
			session.getTransaction().commit();
		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
		}

	}

	public void setActive(OrganistationVO newOrganistation, String id)
			throws Exception {
		try {
			session.beginTransaction();
			OrganistationVO organistationVO = (OrganistationVO) session.get(
					OrganistationVO.class, id);
			organistationVO.setStatusActive(newOrganistation.getStatusActive());
			session.update(organistationVO);
			session.flush();
			session.getTransaction().commit();
		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}

		}
	}

	public List<OrganistationVO> searchByNumeric() throws Exception {
		return null;
	}

	public List<OrganistationVO> searchByCharacter() throws Exception {
		return null;
	}
}
