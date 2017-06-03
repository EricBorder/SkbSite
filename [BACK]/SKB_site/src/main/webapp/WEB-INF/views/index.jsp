<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!doctype html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${contextPath}/resources/images/logo.png">
    <title>СКБ</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="${contextPath}/resources/css/index.css">
</head>


    <%@include file="header.jsp" %>


<div id="content">
    <!-- main-->
    <div id="carousel" class="carousel slide ">
        <!--Индикаторы слайдов -->
        <ol class="carousel-indicators">
            <li class="active" data-target="#carousel" data-slide-to="0"></li>
            <li data-target="#carousel" data-slide-to="1"></li>
            <li data-target="#carousel" data-slide-to="2"></li>
        </ol>

        <!--Слайды -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="${contextPath}/resources/images/drop1.jpg" width="50%" alt="drop1">
                <div class="carousel-caption">
                    <h3>СКБ ньюз</h3>
                    <p>Скандал. Юные шмодники часам стоят в очереди, чтобы забронировать оборудование в СКБ.</p>
                </div>
            </div>
            <div class="item">
                <img src="${contextPath}/resources/images/drop2.jpg" width="50%" alt="drop2">
                <div class="carousel-caption">
                    <h3>СКБ ньюз</h3>
                    <p>Делают, они это, разумеется не для себя, а для перепродажи.</p>
                </div>
            </div>
            <div class="item">
                <img src="${contextPath}/resources/images/drop3.jpg" width="50%" alt="drop3">
                <div class="carousel-caption">
                    <h3>СКБ ньюз</h3>
                    <p>Будьте бдительный и бронируйте быстрей. Или пишите ботов.</p>
                </div>
            </div>
        </div>


        <!--Стрелки переключения между вкладками-->
        <a href="#carousel" class="left carousel-control" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a href="#carousel" class="right carousel-control" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>

<div class="container">
    <!--Новости и проекты-->
    <div class="row">
    <!--Новости раздел-->
        <div class="col-xs-6">
          <ul class="titleHead">
            <li>
              <div class="smallBlueBox"></div>
            </li>
            <li>
              <h3>Новости</h3>
            </li>
            <li>
              <div align="center" class=link>
                <a href="/news">смотреть всё</a>
              </div>
            </li>
          </ul>
        </div>

        <div class="col-xs-6">
          <ul class="titleHead">
            <li>
              <div class="smallBlueBox"></div>
            </li>
            <li>
              <h3>Проекты</h3>
            </li>
            <li>
              <div align="center" class=link>
                <a href="/projects">смотреть всё</a>
              </div>
            </li>
          </ul>
        </div>
    </div>

<!--Новости уровень 1-->

    <div class="row">
    <div class="col-md-3">
        <div class="block">
            <img src="${contextPath}/resources/images/girl-w250.jpg" alt="girl" width="100%">
        </div>
    </div>
    <div class="col-md-3">
        <div class="block">
            <p class="description">
              Автор: Енот 09.03.2017 18:35
            </p>
            <p class="title">
              Енот устал писать макет этого сайта, но он не сдаётся
            </p>
            <p class="article">
              Отрывок из книжки Енотика На долю нашего поколения не досталось великой войны или великой депрессии, поэтому мы должны сами объявить войну...
            </p>
            <p class="detailes">
              <a href="#">Подробнее...</a>
            </p>
        </div>
    </div>
    <div class="col-md-3">
        <div class="block">
            <img src="${contextPath}/resources/images/girl-w250.jpg" alt="girl" width="100%">
        </div>
    </div>
    <div class="col-md-3 ">
        <div class="block">
              <p class="description">
                Автор: Енот 09.03.2017 18:35
              </p>
              <p class="title">
                Енот устал писать макет этого сайта, но он не сдаётся
              </p>
              <p class="article">
                Отрывок из книжки Енотика На долю нашего поколения не досталось великой войны или великой депрессии, поэтому мы должны сами объявить войну...
              </p>
              <p class="detailes">
                <a href="#">Подробнее...</a>
              </p>
        </div>
    </div>
    </div>
</div>
</div>





    <%@include file="footer.jsp" %>

                        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="../../resources/bootstrap/js/bootstrap.js"></script>

<script>
    $(document).ready(function () {
        $('#main_nav li a').click(function () {
            $('#content').load("equipment #content");
        })
    })

//    function showNewContent() {
//        $('#content').show('normal');
//    }
//    $(document).ready(function () {
////        $('#main_nav li a').click(
//            $.ajax({
//                url: "equipment",
//                cache: false,
//                success: function (data) {
//                    alert($(data).find('#content'));
//                    $('#content').load("equipment",$(data).find('#content'));
//                }
//            })
////        )
//    })
</script>
</body>
</html>
