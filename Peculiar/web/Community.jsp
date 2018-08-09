<%@ page language="java" contentType="text/html" pageEncoding="GBK" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Insert title here</title>
    <link type="text/css" rel="stylesheet" href="css/my.css"/>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

    <script type="text/javascript">

    </script>

    <style>
        body {
            background-color: black;
        }

        a {
            color: white;
        }

        h4 {
            color: white;
        }
    </style>
</head>
<body>
<nav class="navbar  navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#" <%--style="font-size: 33px"--%>><img src="picture/system-picture/logo.jpg"></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                <li><a href="#">Link</a></li>
                <li class="dropdown" style="background-color: black">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">分类 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">自然</a></li>
                        <li><a href="#">动漫</a></li>
                        <li><a href="#">汽车</a></li>
                        <li><a href="#">游戏</a></li>
                        <li><a href="#">动物</a></li>
                        <li><a href="#">建筑</a></li>
                        <li><a href="#">影视</a></li>
                        <li><a href="#">创意</a></li>
                        <li><a href="#">星空</a></li>
                        <li><a href="#">人物</a></li>
                        <li><a href="#">唯美</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">其他</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Link</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<%--<div class="logo"><img src="picture/system-picture/logo.jpg" width="205" height="59">
    <h4 id="denlu">
        <form action="Find.jsp" method="post" onchange="submit()">
            <select name="type" Value="全部">
                <option value="全部">全部</option>
                <option value="自然">自然</option>
                <option value="动漫">动漫</option>
                <option value="汽车">汽车</option>
                <option value="游戏">游戏</option>
                <option value="动物">动物</option>
                <option value="建筑">建筑</option>
                <option value="影视">影视</option>
                <option value="创意">创意</option>
                <option value="星空">星空</option>
                <option value="人物">人物</option>
                <option value="唯美">唯美</option>
                <option value="其他">其他</option>
            </select>
            <a onClick="fun('register.jsp')">注册</a>
            <a onClick="fun('login.jsp')">登录</a>
            <a onClick="fun('oneupload.jsp')">上传</a>
        </form>
    </h4>
</div>--%>
<content>
    <c:forEach items="${requestScope.bizis}" var="bizi">
        <%--<div class="bizicontent"><img src="bizi/${bizi.id}" width=100% id="onephoto">
            &nbsp;${bizi.title}
        </div>--%>
        <%--<div class="row">--%>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail" style="background-color: black">
                <img src="bizi/${bizi.id}" alt="...">
                <div class="caption">
                    <h4>${bizi.title}</h4>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">详细</a> <a href="#" class="btn btn-default"
                                                                                   role="button">下载</a></p>
                </div>
            </div>
        </div>
        <%--</div>--%>
    </c:forEach>
</content>
</body>
</html>