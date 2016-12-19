package listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * Application Lifecycle Listener implementation class HttpSessionAttributeListener
 *
 */
@WebListener
public class HttpSessionAttributeListener implements javax.servlet.http.HttpSessionAttributeListener {

    /**
     * Default constructor. 
     */
    public HttpSessionAttributeListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent paramHttpSessionBindingEvent)  { 
         // TODO Auto-generated method stub
    	System.out.println(paramHttpSessionBindingEvent.getSession().getId()+",增加属性-->属性名称:"+paramHttpSessionBindingEvent.getName()+",属性名称"+paramHttpSessionBindingEvent.getValue());
    }

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent paramHttpSessionBindingEvent)  { 
         // TODO Auto-generated method stub
    	System.out.println(paramHttpSessionBindingEvent.getSession().getId()+",删除属性-->属性名称:"+paramHttpSessionBindingEvent.getName()+",属性名称"+paramHttpSessionBindingEvent.getValue());
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent paramHttpSessionBindingEvent)  { 
         // TODO Auto-generated method stub
    	System.out.println(paramHttpSessionBindingEvent.getSession().getId()+",替换属性-->属性名称:"+paramHttpSessionBindingEvent.getName()+",属性名称"+paramHttpSessionBindingEvent.getValue());
    }
	
}
