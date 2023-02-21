package govclinic.controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import govclinic.dao.PatientDAO;
import govclinic.model.Patients;

/**
 * Servlet implementation class OrdersController
 */
public class PatientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String action="", forward="";
	private static String LIST ="listPatient.jsp";
	private static String VIEW ="viewPatient.jsp";
	private PatientDAO dao;
	private int patientid;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PatientController() {
		super();
		dao = new PatientDAO();
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
			patientid = Integer.parseInt(request.getParameter("patientid"));
			request.setAttribute("patient", PatientDAO.getPatient(patientid));
		}
		
		//ACTION FOR LIST PATIENT
		if(action.equalsIgnoreCase("list")) {
			forward = LIST;
			request.setAttribute("patients", PatientDAO.getPatient());
		}

		//ACTION FOR DELETE PATIENT
		if(action.equalsIgnoreCase("delete")) {
			forward = LIST;
			patientid = Integer.parseInt(request.getParameter("patientid"));
			dao.deletePatient(patientid);
			request.setAttribute("patients", PatientDAO.getPatient());
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

		Patients patient = new Patients();

		//retrieve from HTML and set the values
		patient.setPatientid(Integer.parseInt(request.getParameter("patientid")));
		patient.setPatientname(request.getParameter("patientname"));
		patient.setPatientage(Integer.parseInt(request.getParameter("patientage")));
		patient.setPatientemail(request.getParameter("patientemail"));
		patient.setPatientrace(request.getParameter("patientrace"));
		patient.setPatientgender(request.getParameter("patientgender"));
		patient.setPatientphonenum(request.getParameter("patientphonenum"));
		patient.setPatientpassword(request.getParameter("patientpassword"));		
		//invoke method addOrder() in PatientDAO
		dao.addPatient(patient);
		
		//set attribute to a servlet request and call getCustomerOrders() method
		request.setAttribute("patients", PatientDAO.getPatient());
		
		//forward the request to listOrder.jsp
		forward = LIST;
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
		
	}
	
}