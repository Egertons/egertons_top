import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/p/*")
public class IsLogonFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpSession session = request.getSession();
        Object user = session.getAttribute("T");
        if (user!=null){
            chain.doFilter(req, resp);
        }else {
            HttpServletResponse response = (HttpServletResponse)resp;
            String path = request.getSession().getServletContext().getContextPath();
            response.sendRedirect(path+"/web_chen_project/web_chen_project_login.html");
        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
