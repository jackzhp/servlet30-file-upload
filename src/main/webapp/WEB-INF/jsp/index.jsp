<%-- 
    Document   : upload
    Created on : 25 May, 2010, 3:25:47 PM
    Author     : subwiz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servlet 3.0 File Upload Tester</title>
    </head>
    <body>
        <h1>Servlet 3.0 File Upload Tester</h1>
        
        <h3>Simple File Upload</h3>

        <form action="index.html" method="post" enctype="multipart/form-data">
            <input type="file" name="file"/><br/>
            <input type="submit" value="Upload!"/>
        </form>

        <h3>With Additional Parameters</h3>

        <form action="index.html" method="post" enctype="multipart/form-data">
            <input type="text" name="param"/><br/>
            <input type="file" name="file"/><br/>
            <input type="submit" value="Upload!"/>
        </form>

        <h3>With Additional Parameters to Exclusive Servlet</h3>

        <form action="process.html" method="post" enctype="multipart/form-data">
            <input type="text" name="param"/><br/>
            <input type="file" name="file"/><br/>
            <input type="submit" value="Upload!"/>
        </form>

        
    </body>
</html>
