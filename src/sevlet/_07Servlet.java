package sevlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.UserVo;

@WebServlet("/07")
public class _07Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost( request, response );
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserVo vo1 = new UserVo();
		vo1.setNo(1L);
		vo1.setName("vo1");
		request.setAttribute("vo", vo1);
		
		UserVo vo2 = new UserVo();
		vo2.setNo(2L);
		vo2.setName("vo2");
		HttpSession session = request.getSession(true);
		session.setAttribute("vo", vo2);
		
		UserVo vo3 = new UserVo();
		vo3.setNo(3L);
		vo3.setName("vo3");
		
		ServletContext sc = getServletContext();
		sc.setAttribute("vo", vo3);
		
		request.getRequestDispatcher( "/view/07.jsp" ).forward( request, response );
	}
}
