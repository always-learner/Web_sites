package rent.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.buf.UEncoder;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import rent.model.HibernateUtil;
import rent.model.LandlordUser;
import rent.model.TenantUser;

public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		//Getting all the data from jsp page
		String firstName=request.getParameter("firstname");
		String lastName=request.getParameter("lastname");
		String email=request.getParameter("mail_id");
		String mono=request.getParameter("mobile");
		String password=request.getParameter("passwd");
		String address=request.getParameter("user_add");
		//Verifying user type tenant or landlord
		
		String userType=request.getParameter("register_type");
		if(userType.equals("tenant"))
		{
			TenantUser tenantUser=new TenantUser(firstName,lastName,email,mono,password,address);
			SessionFactory sf=HibernateUtil.getSessionFactory();
			Session session=sf.openSession();
    		Transaction transaction=session.beginTransaction();
    		session.persist(tenantUser);
    		transaction.commit();
    		session.close();
    		response.sendRedirect("LoginSuccess.jsp");
			
		}
		else if(userType.equals("Landlord"))
		{
			String plan=request.getParameter("register_plan");
			LandlordUser landlordUser=new LandlordUser(firstName,lastName,email,mono,password,address,plan);
			SessionFactory sf=HibernateUtil.getSessionFactory();
			Session session=sf.openSession();
    		Transaction transaction=session.beginTransaction();
    		session.persist(landlordUser);
    		transaction.commit();
    		session.close();
    		response.sendRedirect("LoginSuccess.jsp");
			
		}
		
	}
}
