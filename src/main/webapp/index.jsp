<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%
    Object counterObj = session.getAttribute("counter");
    int counter = 0;
    if (counterObj != null && counterObj instanceof Integer) {
        counter = ((Integer) counterObj).intValue();
    }
    counter++;
    session.setAttribute("counter", new Integer(counter));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>App name[${contextname}] ${appversion} VERSION</title>
</head>
<body>
<h1>App name[${contextname}] ${appversion} VERSION</h1>

<p>You have visited this context [${contextname}] <%= counter %> times.</p>
<br/>

<p>This page is being served from <b><%= request.getServerName() %>:<%= request.getServerPort() %>
</b></p>
</body>
</html>