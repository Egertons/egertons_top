<%--
  Created by IntelliJ IDEA.
  User: egert
  Date: 2020/11/17
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>系统注册</title>
        <link rel="stylesheet" type="text/css" href="../CSS/web_chen_project/reg.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <%@ page import="java.util.HashMap" %>
        <%@ page import="java.util.Map" %>
        <%
            String ju_1 = "";
            String user = request.getParameter("user");
            String pwd = request.getParameter("pwd");
            Map users = (Map)getServletConfig().getServletContext().getAttribute("users");
            if (users==null){
                users = new HashMap();
            }
            if (users.get(user)!=null){
                String demo = user+"，您已经注册过了~";
        %>
        <center>
            <div id="con_1">
                <p><%=demo%></p>
                <button type="button" class="btn btn-danger"><a style="text-decoration: none;color: white" href="./web_chen_project_login.html">转去登录</a></button>
            </div>
        </center>
        <%}else{
            users.put(user,pwd);
            getServletConfig().getServletContext().setAttribute("users",users);
            ju_1 = user+" 恭喜您，注册成功！！";
        %>
        <center>
            <div id="con">
                <p><%=ju_1%></p>
                <button type="button" class="btn btn-success"><a style="text-decoration: none;color: white" href="./web_chen_project_login.html">转去登录</a></button>
            </div>
        </center>
        <%
            }
        %>



        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>
