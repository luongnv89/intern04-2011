package mock.appcode.dao.daointerface;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import mock.appcode.common.utility.HibernateUtil;
import mock.appcode.common.valueobjects.OrganisationVO;

public class OrganisationDAOImpl extends HibernateUtil implements
		OrganisationDAO {

	private Session session;
	private static int pageSize=5;

	public OrganisationDAOImpl() {
		Session session = HibernateUtil.getSessionFactory().openSession();
		this.session = session;
	}

	// Ham lay ve tat ca cac ban ghi trong Table OrganisationVO
	// Gia tri tra ve la 1 doi tuong mang co kieu la OrganisationVO
	public List<OrganisationVO> getAllOrganisations() throws Exception {

		try {
			session.beginTransaction();
			Query query = (Query) session.createQuery("from OrganisationVO");
			List<OrganisationVO> listResult = query.list();
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
	
	
	public List<OrganisationVO> getAllOrganisations(int pageNumber) throws Exception {

		try {
			session.beginTransaction();
			Query query = (Query) session.createQuery("from OrganisationVO order by orgName");
			
			query.setFirstResult(pageSize*(pageNumber-1));
			query.setMaxResults(pageSize);
			List<OrganisationVO> listResult = query.list();
			
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
	

	// them moi vao ca 2 bang address va organisation
	
	public void addNewOrganisation(OrganisationVO organisationVO ) throws Exception {
		try {

			session.beginTransaction();
			//session.save(addressVO);
			session.save(organisationVO);
			//session.flush();
			session.getTransaction().commit();
		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
			e.printStackTrace();
		}

	}

	public void amendOrganisation(OrganisationVO newOrganistation, String id)
			throws Exception {
		try {
			session.beginTransaction();
			OrganisationVO organisationVO = (OrganisationVO) session.get(
					OrganisationVO.class, id);
			organisationVO
					.setOrgName(newOrganistation.getOrgFullDescription());
			session.update(organisationVO);
			session.flush();
			session.getTransaction().commit();
		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
		}
	}

	public List<OrganisationVO> getOrganisationsByActive(int pageNumber) throws Exception {
		try {
			session.beginTransaction();
			Query query = (Query) session
					.createQuery("from OrganisationVO where statusActive = '1' order by orgName");

			query.setFirstResult(pageSize*(pageNumber-1));
			query.setMaxResults(pageSize);
			
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

	public List<OrganisationVO> getOrganisationsByActive() throws Exception {
		try {
			session.beginTransaction();
			Query query = (Query) session
					.createQuery("from OrganisationVO where statusActive = '1'");
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
	
	
	
	
	public List<OrganisationVO> getOrganisationsByFirstName() throws Exception{
		
		try {
			session.beginTransaction();
			Query query = (Query) session
					.createQuery("from OrganisationVO where statusActive = '1'");
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
	
	public List<OrganisationVO> getOrganisationsByFirstName(String param) throws Exception{
		
		try {
			session.beginTransaction();
			Query query = (Query) session
					.createQuery("from OrganisationVO where orgName like  'ABCD%'");
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
	
	
	
	public List<OrganisationVO> getOrganisationsByFirstName(int pageNumber) throws Exception{
		
		try {
			session.beginTransaction();
			Query query = (Query) session
					.createQuery("from OrganisationVO where statusActive = '1'");
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
	
	
	
	public List<OrganisationVO> getOrganisationsByInActive(int pageNumber) throws Exception {
		try {
			session.beginTransaction();
			Query query = (Query) session
					.createQuery("from OrganisationVO org where org.statusActive='0'");
			query.setFirstResult(pageSize*(pageNumber-1));
			query.setMaxResults(pageSize);
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
	
	

	public void setOrganisationInActive(OrganisationVO newOrganistation, String id)
			throws Exception {
		try {
			session.beginTransaction();
			OrganisationVO organisationVO = (OrganisationVO) session.get(
					OrganisationVO.class, id);
			organisationVO.setStatusActive(newOrganistation.getStatusActive());
			session.update(organisationVO);
			session.flush();
			session.getTransaction().commit();
		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}
		}

	}

	public void setOrganisationActive(OrganisationVO newOrganistation, String id)
			throws Exception {
		try {
			session.beginTransaction();
			OrganisationVO organisationVO = (OrganisationVO) session.get(
					OrganisationVO.class, id);
			organisationVO.setStatusActive(newOrganistation.getStatusActive());
			session.update(organisationVO);
			session.flush();
			session.getTransaction().commit();
		} catch (Exception e) {
			if (session.getTransaction().isActive()) {
				session.getTransaction().rollback();
			}

		}
	}

	public List<OrganisationVO> searchByNumeric() throws Exception {
		return null;
	}

	public List<OrganisationVO> searchByCharacter() throws Exception {
		return null;
	}


	
}
