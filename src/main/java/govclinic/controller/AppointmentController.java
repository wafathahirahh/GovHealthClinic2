package govclinic.controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import govclinic.dao.AppointmentDAO;
import govclinic.model.Appointments;

/**
 * Servlet implementation class OrdersController
 */
public class AppointmentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String action="", forward="";
	private static String LIST ="listAppointment.jsp";
	private static String VIEW ="viewAppointment.jsp";
	private AppointmentDAO dao;
	private int appid;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AppointmentController() {
		super();
		dao = new AppointmentDAO();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		action = request.getParameter("action");
		
		//ACTION FOR VIEW PATIENT
		if(action.equalsIgnoreCase("view")) {
			forward = VIEW;
			appid = Integer.parseInt(request.getParameter("appid"));
			request.setAttribute("app", AppointmentDAO.getAppointment(appid));
		}
		
		//ACTION FOR LIST PATIENT
		if(action.equalsIgnoreCase("list")) {
			forward = LIST;
			request.setAttribute("appointments", AppointmentDAO.getAppointment());
		}

		//ACTION FOR DELETE PATIENT
		if(action.equalsIgnoreCase("delete")) {
			forward = LIST;
			appid = Integer.parseInt(request.getParameter("appid"));
			dao.deleteAppointment(appid);
			request.setAttribute("appointments", AppointmentDAO.getAppointment());
		}
				
		//forward the request
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		Appointments app = new Appointments();

		//retrieve from HTML and set the values
		app.setAppid(Integer.parseInt(request.getParameter("appid")));
		app.setAppdate(request.getParameter("appdate"));
		app.setApptime(request.getParameter("apptime"));
		app.setAppdepartment(request.getParameter("appdepartment"));
		app.setDocincharge(request.getParameter("docincharge"));
		
		//invoke method addOrder() in PatientDAO
		dao.addAppointment(app);
		
		//set attribute to a servlet request and call getCustomerOrders() method
		request.setAttribute("appointments", AppointmentDAO.getAppointment());
		
		//forward the request to listOrder.jsp
		forward = LIST;
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
		
	}
	
}