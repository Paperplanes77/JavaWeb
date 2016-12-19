package listener;

import java.awt.Event;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextAttributeListener
 *
 */
@WebListener
public class ServletContextAttributeListener implements javax.servlet.ServletContextAttributeListener {
    /**
     * Default constructor. 
     */
    public ServletContextAttributeListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextAttributeListener#attributeAdded(ServletContextAttributeEvent)
     */
    public void attributeAdded(ServletContextAttributeEvent event)  { 
		// TODO Auto-generated method stub
    	System.out.println("**增加属性-->属性名称:"+event.getName()+"属性名称:"+event.getValue());
    }

	/**
     * @see ServletContextAttributeListener#attributeRemoved(ServletContextAttributeEvent)
     */
    public void attributeRemoved(ServletContextAttributeEvent event)  { 
         // TODO Auto-generated method stub
    	System.out.println("**删除属性-->属性名称:"+event.getName()+"属性名称:"+event.getValue());
    }

	/**
     * @see ServletContextAttributeListener#attributeReplaced(ServletContextAttributeEvent)
     */
    public void attributeReplaced(ServletContextAttributeEvent  event)  { 
         // TODO Auto-generated method stub
    	System.out.println("**替换属性-->属性名称:"+event.getName()+"属性名称:"+event.getValue());
    }
	
}
