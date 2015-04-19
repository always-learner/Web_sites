package rent.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import rent.model.Advertisement;
import rent.model.HibernateUtil;
import rent.model.LandlordUser;

/**
 * Servlet implementation class SendAd
 */
@WebServlet("/SendAd")
public class SendAd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendAd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession(true);
		LandlordUser user=(LandlordUser)session.getAttribute("User");
		
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session hbSession=factory.openSession();
		Transaction tx=hbSession.beginTransaction();
		
		Advertisement advertisement= new Advertisement();
		advertisement.setAdDescription(request.getParameter("addesc"));
		
		user.setAdvertisement(new ArrayList<Advertisement>());
		user.getAdvertisement().add(advertisement);
		
		hbSession.save(user);
		tx.commit();
		hbSession.close();
	}

}
