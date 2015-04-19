package rent.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import rent.model.User;

/**
 * Servlet implementation class PublishAd
 */

public class PublishAd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PublishAd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		HttpSession session=request.getSession(true);
		if(session!=null)
		{
			User user=(User)session.getAttribute("User");
			if(user!=null)
			{
				if((user.getClass().getName()).equals("rent.model.TenantUser"))
				{
					RequestDispatcher dispatcher=request.getRequestDispatcher("loginWithLandlord.jsp");
					dispatcher.forward(request, response);
				}
				else if((user.getClass().getName()).equals("rent.model.LandlordUser"))
				{
					RequestDispatcher dispatcher=request.getRequestDispatcher("PostAd.jsp");
					dispatcher.forward(request, response);
				}
			}
			else
			{
				RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
				Cookie cookie=new Cookie("Messgae", "Login First as landlord to post Ads");
				response.addCookie(cookie);
				dispatcher.forward(request, response);
			}
			
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
