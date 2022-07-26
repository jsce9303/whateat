package Controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.do")
public class Controller extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
	ServletException, IOException {
		
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String command = uri.substring(context.length());
		
		String result = null;
		Boolean forward = false;
		
		if (command.equals("/main.do")) {
			System.out.println("/main 요청");
			
			result = "/main.jsp";
			forward = true;
		}
		else if (command.equals("/detail.do")) {
			System.out.println("/detail 요청");
			
			result = "/detail.jsp";
			forward = true;
		}
		else if (command.equals("/index.do")) {
			System.out.println("/index 요청");
			
			result = "/index.jsp";
			forward = true;
		}

		if (forward == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(result);
			dispatcher.forward(request, response);
		}
	}

}
