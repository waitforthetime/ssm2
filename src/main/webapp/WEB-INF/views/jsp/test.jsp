<%--
  Created by IntelliJ IDEA.
  User: wy_ms
  Date: 2017/06/24
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>This the test jsp</title>
</head>
<body>
    <h1>Test Info：${msg}</h1>
    <c:out value="${p.n}"/>
    <c:out value="${p.s}"/>
</body>
</html>
