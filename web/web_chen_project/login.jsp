<%--
  Created by IntelliJ IDEA.
  User: egert
  Date: 2020/11/17
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>系统登陆</title>
        <link rel="stylesheet" type="text/css" href="../CSS/web_chen_project/login.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <%@ page import="javax.servlet.http.*" %>
        <%@ page import="java.util.Map" %>
        <%
            String ju_1 = "";
            String ju_2 = "不好意思，您的账号或者密码有误，请重新登陆！";
            String user = request.getParameter("user");
            String pwd = request.getParameter("pwd");
            String time = request.getParameter("time");
            int i_time = Integer.parseInt(time);//该方法可以将time数字转换为一个整数。
            Map users = (Map)getServletConfig().getServletContext().getAttribute("users");
            if (users==null){
                response.sendRedirect("./register.html");
            }else{
                if (users.get(user)!=null&&users.get(user).equals(pwd)){
                    session = request.getSession();
                    session.setAttribute("T",user);
                    Cookie c = new Cookie("user",user);
                    c.setMaxAge(i_time);
                    response.addCookie(c);
                    c = new Cookie("JSESSIONID",session.getId());
                    c.setMaxAge(session.getMaxInactiveInterval());
                    response.addCookie(c);
                    ju_1 = user+"恭喜您，登录成功！！";
        %>
            <center>
                <div id="con">
                    <p><%=ju_1%></p>
                    <button type="button" class="btn btn-success"><a style="text-decoration: none;color: white" href="./goods.jsp">转去购物</a></button>
                </div>
            </center>
        <%}else{%>
            <center>
                <div id="con_1">
                    <p><%=ju_2%></p>
                    <button type="button" class="btn btn-danger"><a style="text-decoration: none;color: white" href="./web_chen_project_login.html">重新登录</a></button>
                </div>
            </center>
        <%
                }
            }
        %>



        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>
