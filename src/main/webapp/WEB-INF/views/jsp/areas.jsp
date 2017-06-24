<%--
  Created by IntelliJ IDEA.
  User: wy_ms
  Date: 2017/06/24
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Areas Info</title>
</head>
<body>

    <div id="areas">
        <c:forEach var="area" items="${areas}">
            <li>id：<c:out value="${area.id}"/>  area：<c:out value="${area.area}"/></li>
        </c:forEach>
    </div>
</body>
</html>
