package mock.appcode.web.filter;

import mock.appcode.common.utility.HibernateUtil;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class HibernateInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		try {
			invocation.invoke();
		} catch (Exception e) {
			// TODO: handle exception
			Session session = HibernateUtil.getSessionFactory().openSession();
			Transaction tx = session.getTransaction();
			if (tx != null && tx.isActive()) {
				tx.rollback();
			}
			return Action.ERROR;
		} finally {
			HibernateUtil.getSessionFactory().close();
		}
		return null;
	}

}
