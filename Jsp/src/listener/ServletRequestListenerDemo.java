package listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletRequestListenerDemo
 *
 */
@WebListener
public class ServletRequestListenerDemo implements ServletRequestListener {

    /**
     * Default constructor. 
     */
    public ServletRequestListenerDemo() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletRequestListener#requestDestroyed(ServletRequestEvent)
     */
    public void requestDestroyed(ServletRequestEvent paramServletRequestEvent)  { 
         // TODO Auto-generated method stub
    	System.out.println("**request初始化。http://"+paramServletRequestEvent.getServletRequest().getRemoteAddr()+paramServletRequestEvent.getServletContext().getContextPath());
    }

	/**
     * @see ServletRequestListener#requestInitialized(ServletRequestEvent)
     */
    public void requestInitialized(ServletRequestEvent paramServletRequestEvent)  { 
         // TODO Auto-generated method stub
    	System.out.println("**request销毁。http://"+paramServletRequestEvent.getServletRequest().getRemoteAddr()+paramServletRequestEvent.getServletContext().getContextPath());
    }
}
