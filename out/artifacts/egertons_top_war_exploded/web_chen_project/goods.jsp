<%--
  Created by IntelliJ IDEA.
  User: egert
  Date: 2020/11/17
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Goods</title>
        <link rel="stylesheet" href="../CSS/web_chen_project/goods.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <p style="margin-top: 250px;font-size: 30px;font-weight: bolder;text-align: center">
            欢迎使用本购物系统
        </p>
        <form action="buy.jsp" style="margin-top: 270px;text-align: center" name="shop" method="post">
            <table align="center" border="1">
                <tr>
                    <td>商品编号</td>
                    <td>商品名称</td>
                    <td>商品价格</td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" value="图书" name="list">1
                    </td>
                    <td>图书</td>
                    <td>20</td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" value="CD" name="list">2
                    </td>
                    <td>CD</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" value="衣服" name="list">3
                    </td>
                    <td>衣服</td>
                    <td>390</td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" value="玩具" name="list">4
                    </td>
                    <td>玩具</td>
                    <td>390</td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" value="手机" name="list">5
                    </td>
                    <td>手机</td>
                    <td>390</td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <input type="submit" name="sub" value="购买">
                    </td>
                </tr>
            </table>
        </form>
        <center>
            <a href="./show.jsp">显示购物车</a>
        </center>



        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>
