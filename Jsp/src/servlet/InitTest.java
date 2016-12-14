package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

/**
 * Servlet implementation class InitTest
 */
//@WebServlet("/servlet/InitTest")
public class InitTest extends HttpServlet {
	private String myInstitute=null;
	private String myMajor=null;
	private String myFrom=null;
	private int count=0;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InitTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		myInstitute = config.getInitParameter("institute");
		if (myInstitute==null) {
			myInstitute="";
		}
		myMajor=config.getInitParameter("major");
		if (myMajor==null) {
			myMajor="";
		}
		myFrom=config.getInitParameter("from");
		if (myFrom==null) {
			myFrom="";
			
		}
		String strCount=config.getInitParameter("count");
		try {
			count=Integer.parseInt(strCount);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD><TITLE>获取初始化参数</TITLE></HEAD>");
		out.println("<BODY>");
		out.print("<H3>所在学院:"+myInstitute+"<H3>");
		out.print("<H3>所学专业:"+myMajor+"</H3>");
		out.print("<H3>籍贯:"+myFrom+"</H3>");
		count++;
		out.print("<H3>此Servlet的访问次数:"+count+"<H3>");
		out.println("</BODY>");
		out.println("</HTML>");
		out.close();
 	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
