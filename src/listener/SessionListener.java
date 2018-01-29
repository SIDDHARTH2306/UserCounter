package listener;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class SessionListener
 *
 */
public class SessionListener implements HttpSessionListener {
	static int total=0;
	ServletContext ctx =null;

	    public SessionListener() {
	        // TODO Auto-generated constructor stub
	    }

	    public void sessionCreated(HttpSessionEvent se)  { 
	        ctx=se.getSession().getServletContext(); 
	    	 ++total;   
	         ctx.setAttribute("total",total);
	       
	    }

	    public void sessionDestroyed(HttpSessionEvent se)  { 

	      ctx.setAttribute("total",total);
	      
	    }
	
}
