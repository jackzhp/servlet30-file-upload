<%-- 
    Document   : success
    Created on : 25 May, 2010, 3:35:17 PM
    Author     : subwiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>File Uploaded!</title>
    </head>
    <body>
        <h1>File Uploaded</h1>

        <p>File path: ${file}</p>

        <c:if test="${not empty parameter}">
            <p>Parameter sent: ${parameter}</p>
        </c:if>
    </body>
</html>
