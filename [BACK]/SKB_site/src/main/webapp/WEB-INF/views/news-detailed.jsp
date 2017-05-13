<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html lang="ru">

<head>
  <meta charset="utf-8" />
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="${contextPath}/resources/images/logo.png">

  <title>СКБ</title>
  <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/news-detailed.css">
</head>

<body>

  <div id="leftSide">
  </div>
  <div id="rightSide">
  </div>


  <!--header-->
  <nav class="navbar navbar-default navbar-toggleable-md navbar-fixed-top">
    <div class="container">
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
      </div>
      <!--/.nav-collapse -->
    </div>
  </nav>

  <!--navbar-->
  <nav>
    <div class="masthead">

      <div class="container">
        <div class="row">
          <div class="col-sm-2 hidden-xs">
            <a class="logotip" href="#"><img src="${contextPath}/resources/images/logo.png"></a>
          </div>
          <div class="col-sm-10">
            <ul id="main_nav" class="nav nav-justified">
              <li class=" visible-xs">
                <a class="logotip" href="#"><img src="${contextPath}/resources/images/logo-100.png"></a>
              </li>
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

  <div class="container content">
    <!--Новости и проекты-->
    <div class="row">
      <!--Новости раздел-->
      <div class="col-md-6">
        <ul class="titleHead">
          <li>
            <div class="smallBlueBox"></div>
          </li>
          <li>
            <h3>Новости</h3></li>
        </ul>
      </div>
    </div>
    <!--IIMAGE 1-->
    <div class="row">
      <div class="col-xs-12 image"><img src="${contextPath}/resources/images/girl-w250.jpg" alt="girl" width="100%"></div></div>
    <div class="row ">
      <div class="col-xs-12">

        <div class="new">

          <p class="title">
            Енот устал писать макет этого сайта, но он не сдаётся
          </p>
          <p class="article">
            Сколько же всего нас окружает интересного: друзья, телевизор, компьютер, кружки всякие, книжки, в конце концов! Даже глаза разбегаются! Бывает, и за то возьмешься и за это. Ну и что, что не все получается, вон сколько еще всего - раз это не получается,
            попробую чего-нибудь другого. А бывает, вообще ничего не хочется! И, к сожалению, бывает намного чаще, чем наоборот. Так в чем же причина? В чем причина, что в многообразии всего, что нас окружает, мы до сих пор остаемся один на один с собой,
            без интересов, без увлечений и, зачастую, без друзей? А может, как раз в многообразии возможностей? Когда не жаль потерять того, что уже достигнуто, потому что на место старого увлечения наверняка можно будет найти новое. Более интересное
            и более доступное (на первый взгляд). Или дело в другом? В том, что когда первый интерес немного ослаб, ты вдруг понимаешь, что твое увлечение - это не только интересные открытия, возможность проявить себя и так далее, но и необходимость совершить
            некоторые усилия над собой? Может быть именно из-за отсутствия этого усилия нам легче согласиться, чем спорить, если несогласен; отступиться от того, что еще вчера было дорого? Вот и получаемся мы скучными, не интересными ни себе, ни окружающим
            человечками. Кто-то из мудрых сказал: „...бойся равнодушных, ибо только с их молчаливого согласия..." А кто такой равнодушный? Уж не тот ли, кто при первых трудностях опускает руки, уж не тот ли, кому вдруг просто стало неохота. Неохота связываться
            с хулиганами, потому что можно получить; с чужим мнением, потому что оно может быть чиьим-то из сильных мира сего; с новым делом, потому что придется потратить свое время, свои силы... Вот так мы и молчим, когда бросают в нас необоснованные
            обвинения, вот так мы и ссылаемся на ужасную занятость, когда товарищу необходимо помочь с уроками, подготовить дело, выпустить газету... Вот так мы и живем. Вроде бы, как все... Правда иногда становится действительно плохо, но, ведь, отогнать
            это состояние намного проще, чем с ним бороться, и намного проще сказать: "Вот раньше было! А сейчас все не то, все разваливается!". Вот так и живем.
          </p>


              <p class="description">
                Автор: Енот 09.03.2017 18:35
              </p>

          </ul>


        </div>
      </div>

    </div>
    <!--comments-->
    <div class="row">
      <div class="col-md-12">
        <h3>Комментарии(3)</h3>
      </div>
    </div>
    <div class="row">
      <div class="col-sm-1">
        <div class="thumbnail">
          <img class="img-responsive user-photo" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
        </div>
        <!-- /thumbnail -->
      </div>
      <!-- /col-sm-1 -->

      <div class="col-sm-8">
        <div class="panel panel-default">
          <div class="panel-heading">
            <strong>myusername</strong> <span class="text-muted">добавлено 5 дней назад</span>
          </div>
          <div class="panel-body">
            Я тут такой классный коммент оставил, все просто ахнули. Кстати некстати, у нас тут на проекте все пользуются разными версиями гит клиента, сам я сегодня перешёл на гиткратен, каждый раз, когда прога включается я вспоминаю что боюсь глубин, чем-то похоже
            на погружение на дно
          </div>
          <!-- /panel-body -->
        </div>
        <!-- /panel panel-default -->
      </div>
      <!-- /col-sm-5 -->
    </div>
    <div class="row">
      <div class="col-sm-1">
        <div class="thumbnail">
          <img class="img-responsive user-photo" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
        </div>
        <!-- /thumbnail -->
      </div>
      <!-- /col-sm-1 -->

      <div class="col-sm-8">
        <div class="panel panel-default">
          <div class="panel-heading">
            <strong>myusername</strong> <span class="text-muted">добавлено 5 дней назад</span>
          </div>
          <div class="panel-body">
            Я тут такой классный коммент оставил, все просто ахнули. Кстати некстати, у нас тут на проекте все пользуются разными версиями гит клиента, сам я сегодня перешёл на гиткратен, каждый раз, когда прога включается я вспоминаю что боюсь глубин, чем-то похоже
            на погружение на дно
          </div>
          <!-- /panel-body -->
        </div>
        <!-- /panel panel-default -->
      </div>
      <!-- /col-sm-5 -->
    </div>

    <div class="row">
      <div class="col-sm-1">
        <div class="thumbnail">
          <img class="img-responsive user-photo" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
        </div>
        <!-- /thumbnail -->
      </div>
      <!-- /col-sm-1 -->

      <div class="col-sm-8">
        <div class="panel panel-default">
          <div class="panel-heading">
            <strong>myusername</strong> <span class="text-muted">добавлено 5 дней назад</span>
          </div>
          <div class="panel-body">
            Я тут такой классный коммент оставил, все просто ахнули. Кстати некстати, у нас тут на проекте все пользуются разными версиями гит клиента, сам я сегодня перешёл на гиткратен, каждый раз, когда прога включается я вспоминаю что боюсь глубин, чем-то похоже
            на погружение на дно
          </div>
          <!-- /panel-body -->
        </div>
        <!-- /panel panel-default -->
      </div>
      <!-- /col-sm-5 -->
    </div>
    <!-- /row -->

    <div class="col-md-9">
               <div class="widget-area no-padding blank">
               <div class="status-upload">
                 <form>
                   <textarea placeholder="Пожалуйста, ничего не пиши сюда" ></textarea>
                   <ul>
                     <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Audio"><i class="fa fa-music"></i></a></li>
                     <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Video"><i class="fa fa-video-camera"></i></a></li>
                     <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Sound Record"><i class="fa fa-microphone"></i></a></li>
                     <li><a title="" data-toggle="tooltip" data-placement="bottom" data-original-title="Picture"><i class="fa fa-picture-o"></i></a></li>
                   </ul>
                   <button type="submit" class="btn btn-success green"><i class="fa fa-share"></i> Комментировать</button>
                 </form>
               </div><!-- Status Upload  -->
             </div><!-- Widget Area -->
           </div>

   </div>

  </div>
<!-- /container -->






  <!--end contant-->
  <footer class="footer_navbar">
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
              <li>Мы в социальных сетях
                <li>
                  <li class="socialIcons text-right">
                    <a href="https://vk.com"><img src="${contextPath}/resources/images/vk.png" alt="Vkontakte">
                    </a>
                    <a href="https://instagram.com"><img src="${contextPath}/resources/images/instagram.png" alt="Instagram"></a>
                    <a href="https://twitter.com"><img src="${contextPath}/resources/images/twitter.png" alt="Twitter"></a>
                  </li>
                  <li><br></li>
                  <li>Copyright &copy 2017</li>
                  <li>Сайт разработала команда TRIP</li>
            </ul>
          </div>
        </div>
      </div>
  </footer>

  <script src="../../resources/js/jquery.min.js"></script>
  <script src="../../resources/js/jquery-3.1.1.slim.min.js"></script>
  <script>window.jQuery</script>
  <script src="../../resources/js/tether.min.js"></script>
  <script src="../../resources/bootstrap/js/bootstrap.js"></script>

</body>

</html>
