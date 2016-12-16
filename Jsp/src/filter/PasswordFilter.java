package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class loginPasswordLost
 */
@WebFilter(urlPatterns = { "/servlet/MyLoginServletDemo" })
public class PasswordFilter implements Filter {

    /**
     * Default constructor. 
     */
    public PasswordFilter() {
        // TODO Auto-generated constructor stub
    	System.out.println("loginPasswordLost:销毁了");
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("loginPasswordLost:销毁了!");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		System.out.println("loginPasswordLost:分离开始!");
		String password=request.getParameter("password");
		if (password!=null&&!"".equals(password)) {
			chain.doFilter(request, response);
		}else {
			HttpServletResponse rep=(HttpServletResponse)response;
			rep.sendRedirect("/Jsp/filter/NullPassword.html");
		}
		
		System.out.println("loginPasswordLost:分离结束!");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("loginPasswordLost:初始化开始!");
	}

}
