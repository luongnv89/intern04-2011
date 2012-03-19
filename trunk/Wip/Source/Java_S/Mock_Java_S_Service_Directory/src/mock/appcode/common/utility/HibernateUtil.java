package mock.appcode.common.utility;

import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.Session;

public class HibernateUtil {
	private static SessionFactory sessionFactory = null;

	public static SessionFactory getSessionFactory() {
		if (sessionFactory == null) {
			try {
				// create the SessionFactory
				sessionFactory = new Configuration().configure()
						.buildSessionFactory();

			} catch (Exception e) {
				System.err.printf("Session Factory error" + e);
			}
		}
		return sessionFactory;
	}

	public static Session getCurrentSession() {
		return getSessionFactory().getCurrentSession();
	}

	public static Session openSession() {
		return getSessionFactory().openSession();
	}
}
