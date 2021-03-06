package process;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.DataManager;
import model.Module;
import model.Professor;

/**
 * Servlet implementation class processInit
 */
@WebServlet("/processInit")
public class processInit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public processInit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DataManager dm = new DataManager();
		ArrayList<Professor> profList = dm.readProf();
		ArrayList<Module> modList = dm.readModule();
		
		HttpSession session = request.getSession();
		session.setAttribute("profList", profList);
		session.setAttribute("modList", modList);
		
		response.sendRedirect("index.jsp");
	}

}
