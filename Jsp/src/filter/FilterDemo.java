package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

/**
 *servlet Filter implementation class FilterDemo
 */
@WebFilter("/*")
public class FilterDemo implements Filter {

    /**
     * Default constructor. 
     */
    public FilterDemo() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("FilterDemo:销毁了");
	}

	/**
	 * @see Filter#doFilter1(ServletRequest, ServletResponse, FilterChain)
	 */

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
	
		// pass the request along the filter chain
		System.out.println("站点网址：http://www.sina.com");
		chain.doFilter(request, response);
		System.out.println("过滤结束了!");
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("FilterDemo:初始化了");
	}

}
