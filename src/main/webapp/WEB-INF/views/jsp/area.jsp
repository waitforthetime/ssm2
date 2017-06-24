<%--
  Created by IntelliJ IDEA.
  User: wy_ms
  Date: 2017/06/24
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Area</title>
</head>
<body>
    <div id="area">
        <span>id：<c:out value="${area.id}" /></span>
        <span>areaInfo：<c:out value="${area.area}"/></span>
    </div>
</body>
</html>
