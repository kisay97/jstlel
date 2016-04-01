package sevlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet( "/01" )
public class _01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost( request, response );
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int iValue = 10;
		float fValue = 3.14f;
		boolean bValue = true;
		String name = "최규광";
		request.setAttribute("name", name);
		request.setAttribute("i", iValue);
		request.setAttribute("f", fValue);
		request.setAttribute("b", bValue);
		request.getRequestDispatcher( "/view/01.jsp" ).forward( request, response );
	}
}
