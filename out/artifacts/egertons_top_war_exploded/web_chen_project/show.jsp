<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>欢迎购物</title>
        <link rel="stylesheet" href="../CSS/web_chen_project/show.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <%@ page import="java.util.Map" %>
        <%!
            private static final long serialVersionUID = 1L;
        %>
        <%
            Map shopcart = (Map)request.getSession().getAttribute("shopcart");
            if (shopcart != null){
                Object[] goodNames = (Object[])shopcart.keySet().toArray();
        %>
           <table border="1">
               <tr>
                   <th>物品名称</th>
                   <th>数量</th>
               </tr>
        <%
                for (Object x : goodNames){
                    Integer count = (Integer)shopcart.get(x);
        %>
            <tr>
                <td><%=x%></td>
                <td><%=count%></td>
            </tr>
        <%
                }
        %>
            </table>
            <a href="./checkout.jsp">转去结账</a>
        <%}else{%>
            <p>您还未购买任何物品</p>
        <%}%>
            <a href="./goods.jsp">继续购物</a>
    </body>
</html>
