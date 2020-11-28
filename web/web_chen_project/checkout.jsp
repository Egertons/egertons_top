<%--
  Created by IntelliJ IDEA.
  User: egert
  Date: 2020/11/18
  Time: 9:01
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>结账</title>
        <link rel="stylesheet" type="text/css" href="../CSS/web_chen_project/checkout.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <%@ page import="java.io.*" %>
        <%@ page import="java.util.Map" %>
        <%
            String user = (String)request.getSession().getAttribute("T");
            Map shopcart = (Map)request.getSession().getAttribute("shopcart");
            if (shopcart != null){
                String path = getServletConfig().getServletContext().getRealPath("/WEB-INF/checkout");
                File file = new File(path);
                if (!file.exists()){//判断文件是否存在
                    file.mkdirs();//建立文件夹（该方法可包括本不存在的文件路径）
                }
                file = new File(path+"/"+user+new java.util.Date().getTime()+".buy");
                if (!file.exists()){
                    file.createNewFile();
                }
                BufferedWriter bw = new BufferedWriter(new FileWriter(file));//创建字符缓冲输出流
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
                    bw.write(x+"="+count+"\n");
        %>
            <tr>
                <td><%=x%></td>
                <td><%=count%></td>
            </tr>
        <%}%>
            </table>
        <%
                request.getSession().removeAttribute("shopcart");
                bw.close();
        %>
            <p>结账成功</p><br>
            <a style="text-decoration: none;color: #4e555b;letter-spacing: 3px" href="./web_chen_project_login.html">您可以选择登录以继续购物</a>
        <%}else{%>
            <p>您没有购买任何物品</p>
        <a style="text-decoration: none;color: #4e555b;letter-spacing: 3px" href="./web_chen_project_login.html">您可以选择登录以继续购物</a>
        <%}%>



        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>
