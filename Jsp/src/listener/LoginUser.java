package listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionBindingEvent;

/**
 * Application Lifecycle Listener implementation class HttpSessionBindingListener
 *
 */
@WebListener
public class LoginUser implements javax.servlet.http.HttpSessionBindingListener {
	private String name;
	
    /**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	
	public LoginUser(String name) {
		super();
		this.name = name;
	}

	/**
     * Default constructor. 
     */
    public LoginUser() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see LoginUser#valueBound(HttpSessionBindingEvent)
     */
    public void valueBound(HttpSessionBindingEvent paramHttpSessionBindingEvent)  { 
         // TODO Auto-generated method stub
    	System.out.println("在session中保存LoginUser对象(name="+this.getName()+"),session id="+ paramHttpSessionBindingEvent.getSession().getId());
    }

	/**
     * @see LoginUser#valueUnbound(HttpSessionBindingEvent)
     */
    public void valueUnbound(HttpSessionBindingEvent paramHttpSessionBindingEvent)  { 
         // TODO Auto-generated method stub
    	System.out.println("在session中移除LoginUser对象(name="+this.getName()+"),session id="+ paramHttpSessionBindingEvent.getSession().getId());
    }
	
}
