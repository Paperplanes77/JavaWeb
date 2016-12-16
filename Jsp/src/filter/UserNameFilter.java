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
 * Servlet Filter implementation class loginNameLost
 */
@WebFilter(description = "页面姓名为空", urlPatterns = { "/servlet/MyLoginServletDemo" })
public class UserNameFilter implements Filter {

    /**
     * Default constructor. 
     */
    public UserNameFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("loginNameLost:销毁了");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		// pass the request along the filter chain
		System.out.println("loginNameLost:分离开始");
		String username=request.getParameter("username");
		if (username!=null&&!"".equals(username)) {
			chain.doFilter(request, response);
		}else {
			HttpServletResponse rep=(HttpServletResponse)response;
			rep.sendRedirect("/Jsp/filter/NullUsername.html");
		}
		
		System.out.println("loginNameLost:分离结束");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("loginNameLost:初始化开始!");
	}

}
