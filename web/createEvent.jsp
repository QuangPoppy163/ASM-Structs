<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 8/24/2019
  Time: 7:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
    <style>
        .errorMessage{
            color: red;
        }
    </style>
</head>
<body>

    <s:form method="POST" action="store">

            <s:textfield type="date" label="When?" name="newEvent.date"  title="YYYY-MM-DD like 2013-01-21"/>

            <s:textfield type="time" label="Time" name="newEvent.time"/>

            <s:textfield label=" What are you planning?" name="newEvent.plan"/>

            <s:textfield name="newEvent.location" label="Where? :"/>

            <s:textfield label="More info?" name="newEvent.info"/>

            <s:submit value="Create Event" action="store"/>

    </s:form>
</body>
</html>
