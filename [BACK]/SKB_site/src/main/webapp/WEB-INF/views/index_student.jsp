<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html lang="ru">
<head>
    <meta charset="utf-8"/>
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="images/logo.png">

    <title>СКБ</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/index-student.css">
</head>
<body>

  <div id="leftSide">
  </div>
  <div id="rightSide">
  </div>


<!--header-->
<nav class="navbar navbar-default navbar-toggleable-md navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Студентческое конструкторское бюро</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse navbar-right">
          <form class="navbar-nav navbar-form  ">
            <div class="form-group">
              <input type="text" placeholder="Поиск" class="form-control">
            </div>
            <button type="submit" class="btn btn btn-default">Найти</button>
          </form>

          <ul class="nav navbar-nav ">
            <li>
              <a class="nav-link" href="#"><span class="glyphicon glyphicon-user"></span> Личный кабинет </a>
            </li>
            <li>
              <a class="nav-link" href="#"><span class="glyphicon glyphicon-log-out"></span> Выход </a>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

      <!--navbar-->
      <nav>
      <div class="masthead">

        <div class="container">
          <div class="row">
              <div class="col-sm-2 hidden-xs">
                <a class="logotip" href="#"><img src ="images/logo.png"></a>
              </div>
              <div class="col-sm-10">
                <ul id="main_nav" class="nav nav-justified">
                  <li class=" visible-xs"><a class="logotip" href="#"><img src ="images/logo-100.png"></a></li>
                  <li class=""><a href="#">Новости</a></li>
                  <li class=""><a href="#">Оборудование</a></li>
                  <li class=""><a href="#">Проекты</a></li>
                  <li class=""><a href="#">Заказы</a></li>
                  <li class=""><a href="#">О нас</a></li>
                </ul>
              </div>
          </div>
        </div>
      </div>
    </nav>

<div id="carousel" class="carousel slide" data-interval="3500" data-ride="carousel">
        <!--Индикаторы слайдов -->
        <ol class="carousel-indicators">
          <li class="active" data-target="#carousel" data-slide-to="0"></li>
          <li data-target="#carousel" data-slide-to="1"></li>
          <li data-target="#carousel" data-slide-to="2"></li>
        </ol>

        <!--Слайды -->
        <div class="carousel-inner">
          <div class="item active">
            <img src="images/drop1.jpg" alt="drop1">
            <div class="carousel-caption">
              <h3>Новости</h3>
              <p>Скандал. Юные шмодники часам стоят в очереди, чтобы забронировать оборудование в СКБ.</p>
            </div>
          </div>
          <div class="item">
            <img src="images/drop2.jpg" alt="drop2">
            <div class="carousel-caption">
              <h3>Оборудование</h3>
              <p>СКБ предоставляет любое оборудование на ваш выбор</p>
              <button class="btn btn-default btn-md">Заказать</button>
            </div>
          </div>
          <div class="item">
            <img src="images/drop3.jpg" alt="drop3">
            <div class="carousel-caption">
              <h3>Проекты</h3>
              <p>Студенты СКБ моделируют Солнечную систему.</p>
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

<div class="container" >
    
<!--Новости и проекты-->
  <div class="row">
    <!--Новости раздел-->
    <div class="col-md-6" >
      <ul class="titleHead">
        <li><div class="smallBlueBox"></div></li>
        <li><h3>Новости</h3></li>
        <li>
          <div align="center" class=link>
            <a href="#">смотреть всё</a>
          </div>
        </li>
      </ul>

      <!--Новости уровень 1-->

          <div class="row">
            <div class="col-md-6 block">
              <img src="images/girl-w250.jpg" alt="girl" width="100%">
            </div>
              <div class="col-md-6 block">
                <p class="description">
                        Автор:  Енот
                        09.03.2017
                        18:35
                </p>
                <p class = "title">
                        Енот устал писать макет этого сайта,
                        но он не сдаётся
                </p>
                <p class="article">
                        Отрывок из книжки Енотика
                        На долю нашего поколения не досталось великой войны или
                        великой депрессии, поэтому мы должны сами объявить войну...
                </p>
                <p class="detailes">
                        <a href="#">Подробнее...</a>
                </p>
              </div>
          </div>

          <div class="row">
            <div class="col-md-6 block">
              <img src="images/girl-w250.jpg" alt="girl" width="100%">
            </div>
              <div class="col-md-6 block">
                <p class="description">
                        Автор:  Енот
                        09.03.2017
                        18:35
                </p>
                <p class = "title">
                        Енот устал писать макет этого сайта,
                        но он не сдаётся
                </p>
                <p class="article">
                        Отрывок из книжки Енотика
                        На долю нашего поколения не досталось великой войны или
                        великой депрессии, поэтому мы должны сами объявить войну...
                </p>
                <p class="detailes">
                        <a href="#">Подробнее...</a>
                </p>
              </div>
          </div>
      </div>

      <div class="col-md-6">
        <ul class="titleHead">
          <li><div class="smallBlueBox"></div></li>
          <li><h3>Проекты</h3></li>
          <li>
            <div align="center" class=link>
              <a href="#">смотреть всё</a>
            </div>
          </li>
        </ul>
        <div class="row">
          <div class="col-xs-6 block">
            <img src="images/girl-w250.jpg" alt="girl" width="100%">
          </div>
            <div class="col-xs-6 block">
              <p class="description">
                      Автор:  Енот
                      09.03.2017
                      18:35
              </p>
              <p class = "title">
                      Енот устал писать макет этого сайта,
                      но он не сдаётся
              </p>
              <p class="article">
                      Отрывок из книжки Енотика
                      На долю нашего поколения не досталось великой войны или
                      великой депрессии, поэтому мы должны сами объявить войну...
              </p>
              <p class="detailes">
                      <a href="#">Подробнее...</a>
              </p>
            </div>
        </div>

        <div class="row">
          <div class="col-xs-6 block">
            <img src="images/girl-w250.jpg" alt="girl" width="100%">
          </div>
            <div class="col-xs-6 block">
              <p class="description">
                      Автор:  Енот
                      09.03.2017
                      18:35
              </p>
              <p class = "title">
                      Енот устал писать макет этого сайта,
                      но он не сдаётся
              </p>
              <p class="article">
                      Отрывок из книжки Енотика
                      На долю нашего поколения не досталось великой войны или
                      великой депрессии, поэтому мы должны сами объявить войну...
              </p>
              <p class="detailes">
                      <a href="#">Подробнее...</a>
              </p>
            </div>
        </div>


        </div>
      </div>
    </div>
  </div>


      <!--end contant-->
<footer class="footer_navbar page-footer">
  <div class="container">
      <div class="row">
          <div class="col-xs-12">
              <div class="col-xs-6">
                <ul class="list-unstyled">
                  <li><a href="#">Новости</a></li>
                  <li><a href="#">Оборудование</a></li>
                  <li><a href="#">Проекты</a></li>
                  <li><a href="#">Заказы</a></li>
                  <li><a href="#">О нас</a></li>
                </ul>
            </div>
            <div class="col-xs-6">
              <ul class="list-unstyled text-right">
                <li>Мы в социальных сетях<li>
                <li class="socialIcons text-right">
                  <a href="https://vk.com"><img src="images/vk.png" alt="Vkontakte">
                  </a>
                  <a href="https://instagram.com"><img src="images/instagram.png" alt="Instagram"></a>
                  <a href="https://twitter.com"><img src="images/twitter.png" alt="Twitter"></a>
                </li>
                <li><br></li>
                <li>Copyright &copy 2017</li>
                <li>Сайт разработала команда TRIP</li>
              </ul>
            </div>
        </div>
  </div>
</footer>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
