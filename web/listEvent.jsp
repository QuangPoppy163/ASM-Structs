<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 8/24/2019
  Time: 7:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <ul>
        <s:iterator value="eventList">
        <li>
            <div>
                <label>When?  : </label>
                <s:property value="date"/>
            </div>
            <div>
                <label>Time  : </label>
                <s:property value="time"/>
            </div>
            <div>
                <label>planning : </label>
                <s:property value="plan"/>
            </div>
            <div>
                <label>location  : </label>
                <s:property value="location"/>
            </div>
            <div>
                <label>info : </label>
                <s:property value="info"/>
            </div>
            <div>
                <s:form action="edit">
                    <s:submit action="edit" value="Edit"/>
                </s:form>

            </div>
            <div>
                -------------------------------------------------------------------
            </div>


        </li>
        </s:iterator>
    </ul>
</body>
</html>
