<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 8/22/2019
  Time: 11:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Hello</h1>
    <s:form method="POST" action="save">
        <s:textfield name="student.rollNumber"/>
        <s:textfield name="student.name"/>
        <s:submit value="Submit" action="save"/>
    </s:form>

    <ul>
        <s:iterator value="students">
            <li><s:property value="name"/> </li>
        </s:iterator>
    </ul>

</body>
</html>
