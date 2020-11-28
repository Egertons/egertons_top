import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter("/*")
public class CharsetFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest)req;
        request.setCharacterEncoding("UTF-8");
        chain.doFilter(req, resp);//将服务传递给下一次监听器抑或是Servlet
        resp.setContentType("text/html;charset=UTF-8");
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
