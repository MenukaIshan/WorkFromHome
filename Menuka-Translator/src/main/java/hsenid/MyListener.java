package hsenid;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.io.IOException;
import java.sql.SQLException;

/**
 * This is my ServletContextListener class
 * I've entered the database parameters to web.xml
 */
public class MyListener implements ServletContextListener {

    private final static Logger logger = LogManager.getLogger(MyListener.class);
    DBConnector db = null; // Here we Created the Database connection

    /**
     * When Web app starts the MyListener works
     * Then contextInitialized method invokes.
     */
    public void contextInitialized(ServletContextEvent event) {

        logger.info("Servlet Context Listener Initialised");
        ServletContext test1 = event.getServletContext();

        try {
            db = new DBConnector();
            test1.setAttribute("DBConnection", db.getConn());
            logger.trace("DBConnection created!!!");
            
        } catch (IOException e) {
            logger.error("MyListener IOException !!!", e);
        } catch (SQLException e) {
            logger.error("MyListener SQLException !!!", e);
        }


    }

    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        try {
            db.getConn().close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}