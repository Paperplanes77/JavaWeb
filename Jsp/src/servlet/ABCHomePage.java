package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.java.swing.plaf.windows.resources.windows_zh_TW;

/**
 * Servlet implementation class FromServlet
 */
@WebServlet("/servlet/ABCHomePage")
public class ABCHomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ABCHomePage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<head><title>ABC公司主页</title></head>");
		out.println("<body>");
		ServletContext context=getServletContext();
		RequestDispatcher rd=context.getRequestDispatcher("/servlet/HeaderServlet");
		/*include包含所有的servlet    forward只是在自己的servlet里面 终止当前servl*/
		rd.include(request, response);
		//rd.forward(request,response);
		out.println("<font size='4' color='#000099'>");
		out.println("&nbsp;&nbsp;ABC limited founded in 1890 is a multinationalcpmpany spead across six nations.<br><br>");
		out.println("we deal with garmentexport and online sales of designer wares.<br><br>");
		out.println("To hava a look at our fascinating collection check out at <a href='www.baidu.com'></a></font><br><br>");
		rd=context.getRequestDispatcher("/servlet/Footer.html");
		rd.include(request, response);
		//rd.forward(request,response);
		out.println("</body>");
		out.println("<html>");
 	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
