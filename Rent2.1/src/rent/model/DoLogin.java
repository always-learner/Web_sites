package rent.model;

import java.util.ArrayList;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import antlr.collections.List;

public class DoLogin {
	
	public DoLogin() {
		// TODO Auto-generated constructor stub
	}
	public static boolean getUser(String email, String password, String role, HttpServletRequest request)
	{
		if(role.equals("Landlord"))
		{
			SessionFactory factory=HibernateUtil.getSessionFactory();
			Session session=factory.openSession();
			session.beginTransaction();
			String fetch_query="from LandlordUser where email='"+email+"' and password='"+password+"'";
						
			Query query = session.createQuery(fetch_query);
			            
            ArrayList<LandlordUser> result=  (ArrayList<LandlordUser>) query.list();
            if(result.size()>0)
            {
            	LandlordUser landUser=result.get(0);
            	HttpSession userSession=request.getSession(true);
            	userSession.setAttribute("User", landUser);
            	return true;
            }
			return false;
		}
		else if(role.equals("Tenant"))
		{
			SessionFactory factory=HibernateUtil.getSessionFactory();
			Session session=factory.openSession();
			session.beginTransaction();
			String fetch_query="from TenantUser where email='"+email+"' and password='"+password+"'";
						
			Query query = session.createQuery(fetch_query);
			            
            ArrayList<TenantUser> result=  (ArrayList<TenantUser>) query.list();
            if(result.size()>0)
            {
            	TenantUser tenantUser=result.get(0);
            	HttpSession userSession=request.getSession(true);
            	userSession.setAttribute("User", tenantUser);
            	return true;
            }
			return false;
		}
		return false;
	}
}
