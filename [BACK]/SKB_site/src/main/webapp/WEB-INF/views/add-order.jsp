<%@page pageEncoding="UTF-8"%>
<%@include file="includes/aboveHtml.jsp"%>
<!doctype html>
<c:choose>
    <c:when test="${order.name != null}">
        <c:set var="title" value="Редактирование заказа '${order.name}'"/>
    </c:when>
    <c:otherwise>
        <c:set var="title" value="Добавление заказа"/>
    </c:otherwise>
</c:choose>
<html>
<head>

    <title>СКБ</title>

    <link rel="stylesheet" type="text/css" href="/resources/css/add-order.css">
    <%@include file="includes/head.jsp"%>
    <%@include file="includes/summernoteLinksScrtipts.jsp"%>

    <title>${title}</title>
</head>

<body>

<div id="leftSide">
</div>
<div id="rightSide">
</div>


<%@include file="includes/header.jsp" %>

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
                    <h3>
                        <c:choose>
                            <c:when test="${order.name != null}">
                                Редактирование заказа
                            </c:when>
                            <c:otherwise>
                                Добавление заказа
                            </c:otherwise>
                        </c:choose>
                    </h3>
                </li>
            </ul>
        </div>
    </div>


    <form:form method="POST" modelAttribute="order" enctype="multipart/form-data" >

        <div class="col-xs-12">
            <div class="widget-area no-padding blank">
                <div class="status-upload">
                    <div class="form-group order-shell">
                        <label class="control-label col-xs-3" for="orderName">Название заказа</label>
                        <spring:bind path="name">
                            <div class="col-xs-9">
                                <form:input type="text" path="name" class="form-control" id="orderName" placeholder="Введите название заказа"></form:input>
                                <form:errors path="name"></form:errors>
                            </div>
                        </spring:bind>
                    </div>
                    <div class="form-group order-shell">
                        <label class="control-label col-xs-3" for="orderContent">Содержание заказа</label>
                        <spring:bind path="content">
                            <div class="col-xs-9">
                                <form:textarea path="content" placeholder="Содержание заказа" class="form-control summernote-editor" id="orderContent"></form:textarea>
                                <form:errors path="content"></form:errors>
                                <c:if test="${order.id > 0}">
                                    <form:input  path="id"  value="${order.id}" cssStyle="visibility: hidden"></form:input>
                                </c:if>
                            </div>
                        </spring:bind>
                    </div>
                    <div class="form-group order-shell">
                        <sec:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_MODERATOR')">
                            <c:if test="${order.name != null && !order.checked}">
                                <div class="form-group content-shell">
                                    <spring:bind path="checked">
                                        <div class="form-check">
                                            <label class="control-label col-xs-5">Модерация</label>
                                            <label class="control-label form-check-label col-xs-1 col-xs-offset-6 text-left">
                                                <form:checkbox path="checked" class="control-label"/>
                                                <form:errors path="checked"/>
                                            </label>
                                        </div>
                                    </spring:bind>
                                </div>
                            </c:if>
                        </sec:authorize>
                    </div>
                    <div class="form-group order-shell">
                        <sec:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_MODERATOR')">
                            <label class="control-label col-xs-3">Проект, реализующий заказ</label>
                            <div class="col-xs-9">
                                <form:select path="project.id">
                                    <form:option value="-1" selected="selected">Отсутствует</form:option>
                                    <form:options items="${allProjects}" itemLabel="name" itemValue="id"></form:options>
                                </form:select>
                            </div>
                        </sec:authorize>
                    </div>
                    <div class="container">
                        <div class="col-xs-offset-6 col-xs-6 col-md-offset-8 col-md-4 col-sm-offset-7 col-sm-5">
                            <div class="form-group">
                                <c:if test="${ empty order.id }">
                                    <button type="submit"  formaction="/add-order?${_csrf.parameterName}=${_csrf.token}" class="btn btn-success green btn-sm"><i class="fa fa-share"></i>
                                        Добавить заказ
                                    </button>
                                </c:if>
                                <c:if test="${order.id > 0}">
                                    <button type="submit" formaction="/edit-order?${_csrf.parameterName}=${_csrf.token}" class="btn btn-success green btn-sm"><i class="fa fa-share"></i>
                                        Изменить заказ
                                    </button>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div><!-- Status Upload  -->
            </div><!-- Widget Area -->
        </div>
    </form:form>

</div>

<!-- /container -->

<!--end contant-->
<%@include file="includes/footer.jsp" %>

<script src="../../resources/js/jquery.min.js"></script>
<script src="../../resources/js/jquery-3.1.1.slim.min.js"></script>
<script>window.jQuery</script>
<script src="../../resources/js/tether.min.js"></script>
<script src="../../resources/bootstrap/js/bootstrap.js"></script>

</body>
</html>
