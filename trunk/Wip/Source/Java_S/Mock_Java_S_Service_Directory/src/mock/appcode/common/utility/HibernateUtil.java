package mock.appcode.common.utility;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.hibernate.Session;

public class HibernateUtil {
	private static final SessionFactory sessionFactory = buildSessionFactory();


	private static SessionFactory buildSessionFactory() {
		try {
			// Create the SessionFactory from hibernate.cfg.xml
			return new AnnotationConfiguration().configure()
					.buildSessionFactory();
		} catch (Throwable ex) {
			System.err.println("++++++++++++++++Khoi tao SessionFactory bi loi.++++++++++++++++++++++++++++" + ex);
			throw new ExceptionInInitializerError(ex);
		}
	}

	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}
