<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Egertons的个人网站</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="CSS/index.css">
    <link rel="icon" href="favicon.ico">
    <script src="https://unpkg.com/ityped@0.0.5"></script>
    <script type="text/javascript" src="js/index.js"></script>
    <style>
        /* 如果光标没出现，而是出现在下一行，那么就是盒子是块级标签，必须得转换成行内标签 */
        h2 {
            display: inline;
        }
        /* 想让的光标闪动的话，复制下面的代码 */
        .typed-cursor{
            opacity: 1;
            animation: typedjsBlink 0.7s infinite;
            -webkit-animation: typedjsBlink 0.7s infinite;
            animation: typedjsBlink 0.7s infinite;
        }
        @keyframes typedjsBlink{
            50% { opacity: 0.0; }
        }
        @-webkit-keyframes typedjsBlink{
            0% { opacity: 1; }
            50% { opacity: 0.0; }
            100% { opacity: 1; }
        }
        .typed-fade-out{
            opacity: 0;
            transition: opacity .25s;
            -webkit-animation: 0;
            animation: 0;
        }
    </style>
</head>
<body>
<div class="container-fluid d-none d-lg-block">
    <div class="row" id="head">
        <div class="col-sm head_left">
            <img src="img/E.png" width="30" alt="">
            <a href="index.jsp">ホームページ</a>
            <a href="blog.html">ブログ</a>
            <a href="tools_page.html">コンポーネント</a>
            <a href="author.html">作者</a>
        </div>
        <div class="col-sm head_right">
            <div class="symTime" id="clock"></div>
            <div class="null"></div><!--空标记用于清楚子级浮动对父标签的影响-->
        </div>
    </div>
</div>
<div class="container-fluid d-lg-none">
    <div class="row" id="head_f" style="line-height: 40px">
        <div class="col-xs head_left">
            <img src="img/E.png" width="30" alt="">
        </div>
        <div class="col-xs head_right" style="position: absolute;right: 60px">
            <div class="btn-group">
                <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    快速导航
                </button>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="index.jsp">ホームページ</a>
                    <a class="dropdown-item" href="blog.html">ブログ</a>
                    <a class="dropdown-item" href="tools_page.html">コンポーネント</a>
                    <a class="dropdown-item" href="author.html">作者</a>
                </div>
            </div>
            <div class="null"></div>
        </div>
    </div>
</div>
<div class="container-fluid d-none d-lg-block" id="content">
    <div class="row">
        <div class="col-sm">
            <div class="content-h" style="padding-top: 100px;font-size: 50px">
                <span id="box" style="line-height: 100px"></span><br>
                <span id="box_1" style="line-height: 100px"></span><br>
                <span id="box_2" style="line-height: 100px"></span>
                <script type="text/javascript" src="https://cdn.bootcss.com/typed.js/2.0.5/typed.js"></script>
                <script>
                    var boxObj = document.getElementById('box');
                    var boxObj_1 = document.getElementById('box_1');
                    var boxObj_2 = document.getElementById('box_2');
                    new Typed(boxObj,{
                        strings: ['みんな、おはよう'],
                        typeSpeed:200, // 速度
                        showCursor:false
                    });
                    setTimeout(f1,2500)
                    setTimeout(f,5000)
                    function f1() {
                        new Typed(boxObj_1,{
                            strings: ['張霖です、よろしく'],
                            typeSpeed:200, // 速度
                            showCursor:false
                        });
                    }
                    function f() {
                        new Typed(boxObj_2,{
                            strings: ['( σ\'ω\')σ#Skr'],
                            typeSpeed:200, // 速度
                        });
                    }
                </script>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm">
            <div class="foot">
                <table class="foot_table">
                    <tr>
                        <th style="border-left: none"><span>School：</span>DNUI</th>
                        <th><span>Const Add : </span>LiaoNing_DaLian</th>
                        <th>WWW.EGERTONS.TOP</th>
                        <th><a style="color: white;text-decoration: none" href="http://beian.miit.gov.cn/">吉ICP备2020006328号-1</a></th>
                        <th><span>吉公网安备22020202000263</span></th>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid d-lg-none" style="background-color: #4c5ea2;height: 100%;min-height: 100%">
    <div class="row">
        <div class="col-sm">
            <div class="content-h" style="padding-top: 30px">
                <center>
                    <span style="line-height: 100px" id="ityped_4"></span><br>
                    <span style="line-height: 100px;font-size: 30px" id="ityped_5"></span><br>
                    <span style="line-height: 100px" id="ityped_6"></span>
                    <script>
                        ityped.init('#ityped_4', {
                            strings:['みんな、おはよう'],
                            startDelay: 100,
                            loop: false,
                            onFinished: function b(){
                                ityped.init('#ityped_5', {
                                    strings:['張霖です、よろしく'],
                                    startDelay: 100,
                                    loop: false,
                                    onFinished: function bb(){
                                        ityped.init('#ityped_6', {
                                            strings:['( σ\'ω\')σ#Skr'],
                                            loop: false
                                        })
                                    }
                                })
                            }
                        })
                    </script>
                </center>
            </div>
        </div>
    </div>
    <div class="row" style="text-align: center;position: fixed;bottom: 100px">
        <div class="col-sm">
            <div id="foot">
                <table id="foot_table">
                    <tr>
                        <th style="border-left: none"><span>School：</span>DNUI</th>
                        <th><span>Const Add : </span>LiaoNing_DaLian</th>
                        <th>EGERTONS.TOP</th>
                    </tr>
                    <tr>
                        <th colspan="3" style="border-right: 1px solid black;text-align: center"><a style="color: white;text-decoration: none" href="http://beian.miit.gov.cn/">吉ICP备2020006328号-1</a></th>
                    </tr>
                    <tr>
                        <th colspan="3" style="border-right: 1px solid black;text-align: center"><span>吉公网安备22020202000263</span></th>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>
