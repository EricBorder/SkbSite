<%@page pageEncoding="UTF-8"%>
<%@include file="includes/aboveHtml.jsp"%>

<!doctype html>
<c:choose>
    <c:when test="${project.name != null}">
        <c:set var="title" value="Редактирование проекта '${project.name}'"/>
    </c:when>
    <c:otherwise>
        <c:set var="title" value="Добавление проекта"/>
    </c:otherwise>
</c:choose>
<html>
<head>
    <title>СКБ</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/add-news.css">
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

<spring:message code="${projectMemberAddSuccess}"/>
<spring:message code="${projectMemberDeleteSuccess}"/>
<spring:message code="${projectCaptainChangeSuccess}"/>

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
                            <c:when test="${project.name != null}">
                                Редактирование проекта
                            </c:when>
                            <c:otherwise>
                                Добавление проекта
                            </c:otherwise>
                        </c:choose>
                    </h3>
                </li>
            </ul>
        </div>
    </div>

    <form:form method="POST" modelAttribute="project" enctype="multipart/form-data">
        <div class="col-xs-12">
            <div class="widget-area no-padding blank">
                <div class="status-upload">
                    <c:if test="${isEditing == true}">
                        <form:input  path="id"  value="${project.id}" cssStyle="visibility: hidden"></form:input>
                    </c:if>
                    <%--Название--%>
                    <div class="form-group content-shell">
                            <label class="control-label col-xs-3" for="projectName">Название проекта</label>
                            <div class="col-xs-9">
                                <spring:bind path="name">
                                        <form:input type="text" path="name" class="form-control" id="projectName" placeholder="Введите название проекта"></form:input>
                                        <form:errors path="name"></form:errors>
                                </spring:bind>
                            </div>
                    </div>
                    <c:if test="${isEditing == true}">
                        <%--Статус проекта--%>
                        <div class="content-shell">
                            <label class="col-xs-3" for="projectStatus">Статус проекта</label>
                            <div class="col-xs-9">
                                <form:select path="projectStatus.id" items="${allProjectStatuses}" itemValue="id" itemLabel="name" id="projectStatus"></form:select>
                                <form:errors path="projectStatus"></form:errors>
                            </div>
                        </div>
                        <%--Процент проекта--%>
                        <div class="content-shell">
                            <label class="col-xs-3" for="percent">Процент завершения</label>
                            <div class="col-xs-9">
                                <spring:bind path="statusPercent">
                                        <form:input type="text" path="statusPercent" class="form-control" id="percent" placeholder="Процент завершения"></form:input>
                                        <form:errors path="statusPercent"></form:errors>
                                </spring:bind>
                            </div>
                        </div>
                    </c:if>
                    <%--описание--%>
                    <div class="form-group content-shell">
                        <label class="control-label col-xs-3" for="about">Описание</label>
                        <spring:bind path="about">
                            <div class="col-xs-9">
                                <form:textarea path="about" id="about" placeholder="Опишите свой проект" class="form-control summernote-editor" ></form:textarea>
                                <form:errors path="about"></form:errors>
                            </div>
                        </spring:bind>
                    </div>
                    <div class="container">
                        <div class="col-xs-offset-6 col-xs-6 col-md-offset-8 col-md-4 col-sm-offset-7 col-sm-5">
                            <div class="form-group">
                                <c:if test="${isEditing == true}">
                                    <button type="submit" formaction="/edit-project?${_csrf.parameterName}=${_csrf.token}" class="btn btn-success green btn-sm"><i class="fa fa-share"></i>
                                        Изменить проект
                                    </button>
                                </c:if>
                                <c:if test="${isEditing == false}">
                                    <button type="submit" formaction="/add-project?${_csrf.parameterName}=${_csrf.token}" class="btn btn-success green btn-sm"><i class="fa fa-share"></i>
                                        Добавить проект
                                    </button>
                                </c:if>
                            </div>
                        </div>
                    </div>


                </div><!-- Status Upload  -->
            </div><!-- Widget Area -->
        </div>
    </form:form>
    <c:if test="${isEditing == true}">
        <div>
            <form method="POST" action="/delete-membership">
                <input type="hidden" name = "projectId" value="${project.id}"/>
                <label for="memberForDelete">Удали кого-нибудь из проекта</label>
                <p><select id="memberForDelete" name="memberId" size="5">
                    <c:forEach items="${projectTeamExceptCaptain}" var="member">
                        <option value="${member.id}">${member.username}</option>
                    </c:forEach>
                </select></p>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <button type="submit">Удалить</button>
            </form>
            <form method="POST" action="/add-membership">
                <p><input type="hidden" name="projectId" value="${project.id}"></p>
                <label for="newMember">Добавь кого-нибудь в проект</label>
                <p><select id="newMember" name="newMemberId" size="5">
                    <c:forEach items="${nonProjectMembers}" var="nonMember">
                        <option value="${nonMember.id}">${nonMember.username}</option>
                    </c:forEach>
                </select></p>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <p><button type="submit">Добавить</button></p>
            </form>
            <form method="POST" action="/change-captain">
                <p><input type="hidden" name="projectId" value="${project.id}"></p>
                <label for="captain">Поменяй капитана</label>
                <p><select id="captain" name="captainId" size="5">
                    <option value="${project.captain.id}" selected="selected">${project.captain.username}</option>
                    <c:forEach items="${projectTeamExceptCaptain}" var="member">
                        <option value="${member.id}">${member.username}</option>
                    </c:forEach>
                </select></p>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <p><button type="submit">Изменить капитана</button></p>
            </form>
        </div>
    </c:if>
</div>
<%@include file="includes/footer.jsp" %>
</body>
</html>
