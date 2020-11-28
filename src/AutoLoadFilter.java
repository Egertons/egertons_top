import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.HashMap;
import java.util.Map;

@WebFilter("/*")
public class AutoLoadFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)servletRequest;
        HttpSession session = request.getSession();
        if (session.isNew()){
            Cookie[] cookies = request.getCookies();
            if (cookies!=null){
                for (Cookie x : cookies){
                    if (x.getName().equals("user")){
                        session.setAttribute("T",x.getValue());
                        String path = session.getServletContext().getRealPath("/WEB-INF/uncheckout/"+x.getValue()+".un");
                        System.out.println("filter:"+path);
                        File file = new File(path);
                        if (file.exists()){
                            try {
                                LineNumberReader lnr = new LineNumberReader(new BufferedReader(new FileReader(file)));
                                Map shopcart = new HashMap();
                                String line = lnr.readLine();
                                while(line!=null){
                                    if (line.indexOf("=")>0){
                                        String name = line.substring(0,line.indexOf("="));
                                        String value = line.substring(line.indexOf("=")+1,line.length());
                                        int count = Integer.parseInt(value);
                                        shopcart.put(name,count);
                                    }
                                    line = lnr.readLine();
                                }
                                lnr.close();
                                file.delete();
                                session.setAttribute("shopcart",shopcart);
                                String context = session.getServletContext().getContextPath();
                                HttpServletResponse response = (HttpServletResponse)servletResponse;
                                response.sendRedirect(context+"/p/show");
                            }catch (FileNotFoundException e){
                                e.printStackTrace();
                            }catch (IOException e){
                                e.printStackTrace();
                            }
                        }
                        break;
                    }
                }
            }
        }

            filterChain.doFilter(request,servletResponse);
    }

    public void destroy() {
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
