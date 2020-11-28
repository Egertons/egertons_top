import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.*;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.Map;

@WebListener()
public class AutoSaveListener implements ServletContextListener,
        HttpSessionListener, HttpSessionAttributeListener {

    // Public constructor is required by servlet spec
    public AutoSaveListener() {
    }

    // -------------------------------------------------------
    // ServletContextListener implementation
    // -------------------------------------------------------
    public void contextInitialized(ServletContextEvent sce) {
      /* This method is called when the servlet context is
         initialized(when the Web application is deployed). 
         You can initialize servlet context related data here.
      */
    }

    public void contextDestroyed(ServletContextEvent sce) {
      /* This method is invoked when the Servlet Context 
         (the Web application) is undeployed or 
         Application Server shuts down.
      */

    }

    // -------------------------------------------------------
    // HttpSessionListener implementation
    // -------------------------------------------------------
    public void sessionCreated(HttpSessionEvent se) {
        /* Session is created. */
    }

    public void sessionDestroyed(HttpSessionEvent se) {
        HttpSession session = se.getSession();
        String user = (String)session.getAttribute("T");
        Map shopcart = (Map)session.getAttribute("shopcart");
        try {
            if (shopcart!=null){
                String path = session.getServletContext().getRealPath("/WEB-INF/uncheckout");
                File file = new File(path);
                if (!file.exists()){
                    file.mkdirs();
                }
                file = new File(path+"/"+user+".un");
                if (!file.exists()){
                    file.createNewFile();
                }
                BufferedWriter bw = new BufferedWriter(new FileWriter(file));
                Object[] goodNames = (Object[])shopcart.keySet().toArray();
                for (Object x : goodNames) {
                    Integer count = (Integer)shopcart.get(x);
                    bw.write(x+"="+count+"\n");
                }
                bw.close();
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    // -------------------------------------------------------
    // HttpSessionAttributeListener implementation
    // -------------------------------------------------------

    public void attributeAdded(HttpSessionBindingEvent sbe) {
      /* This method is called when an attribute 
         is added to a session.
      */
    }

    public void attributeRemoved(HttpSessionBindingEvent sbe) {
      /* This method is called when an attribute
         is removed from a session.
      */
    }

    public void attributeReplaced(HttpSessionBindingEvent sbe) {
      /* This method is invoked when an attribute
         is replaced in a session.
      */
    }
}
