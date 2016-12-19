package listener;

import java.util.Enumeration;

import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletRequestAttributeListenerDemo
 *
 */
@WebListener
public class ServletRequestAttributeListenerDemo implements ServletRequestAttributeListener {

    /**
     * Default constructor. 
     */
    public ServletRequestAttributeListenerDemo() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletRequestAttributeListener#attributeRemoved(ServletRequestAttributeEvent)
     */
    public void attributeRemoved(ServletRequestAttributeEvent paramServletRequestAttributeEvent)  { 
         // TODO Auto-generated method stub
    	System.out.println("**删除request属性-->"+paramServletRequestAttributeEvent.getName()+",属性名称"+paramServletRequestAttributeEvent.getValue());

    }

	/**
     * @see ServletRequestAttributeListener#attributeAdded(ServletRequestAttributeEvent)
     */
    public void attributeAdded(ServletRequestAttributeEvent paramServletRequestAttributeEvent)  { 
         // TODO Auto-generated method stub
    	System.out.println("**增加request属性-->"+paramServletRequestAttributeEvent.getName()+",属性名称"+paramServletRequestAttributeEvent.getValue());
    }

	/**
     * @see ServletRequestAttributeListener#attributeReplaced(ServletRequestAttributeEvent)
     */
    public void attributeReplaced(ServletRequestAttributeEvent paramServletRequestAttributeEvent)  { 
         // TODO Auto-generated method stub
    	System.out.println("**替换request属性-->"+paramServletRequestAttributeEvent.getName()+",属性名称"+paramServletRequestAttributeEvent.getValue());
    	System.out.println("新的request属性-->属性名称"+paramServletRequestAttributeEvent.getName()+"属性内容"+paramServletRequestAttributeEvent.getServletRequest().getAttribute(paramServletRequestAttributeEvent.getName()));
    }
	
}
