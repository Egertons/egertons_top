<%--
  Created by IntelliJ IDEA.
  User: egert
  Date: 2020/11/18
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>buy</title>
        <link rel="stylesheet" href="../CSS/web_chen_project/buy.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <%@ page import="java.util.HashMap" %>
        <%@ page import="java.util.Map" %>
        <%
            session = request.getSession();
            String good = request.getParameter("list");
            if(good!=null){
                Map shopcart = (Map)session.getAttribute("shopcart");
                if(shopcart!=null){
                    Integer count = (Integer)shopcart.get(good);
                    if (count==null){
                        count = new Integer(1);
                    }else{
                        count+=1;
                    }
                    shopcart.put(good,count);
                }else{
                    shopcart = new HashMap();
                    shopcart.put(good,new Integer(1));
                }
                session.setAttribute("shopcart",shopcart);
            }
        %>
            <a href="./checkout.jsp">转去结账</a>
            <a href="./show.jsp">显示购物车</a>
            <a href="./goods.jsp">继续购物</a>


    </body>
</html>
