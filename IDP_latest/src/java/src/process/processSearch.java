package process;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Module;
import model.Professor;

/**
 * Servlet implementation class processSearch
 */
@WebServlet("/processSearch")
public class processSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public processSearch() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String radioValue = request.getParameter("optionRadio");
		String searchString = request.getParameter("searchString");
		
                /*
		//create result arraylist and retrieve all the mods and profs.
		ArrayList<Professor> profList = (ArrayList<Professor>) session.getAttribute("profList");
		ArrayList<Module> modList = (ArrayList<Module>) session.getAttribute("modList");
		ArrayList<Professor> profResultList = new ArrayList<Professor>();
		ArrayList<Module> modResultList = new ArrayList<Module>();*/
		
		if(radioValue.equals("prof")){

			response.sendRedirect("profresult.jsp");
		}else{

			response.sendRedirect("modresult.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request,response);
	}
}// end servlet
