<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
<h1>Result:</h1>
<%
    String error = (String) request.getAttribute("error");
    if (error != null) {
%>
    <h3 style="color: red;"><%= error %></h3>
<%
    } else {
        double first = (double) request.getAttribute("firstOperand");
        double second = (double) request.getAttribute("secondOperand");
        char op = (char) request.getAttribute("operator");
        double result = (double) request.getAttribute("result");
%>
    <h3><%= first %> <%= op %> <%= second %> = <%= result %></h3>
<%
    }
%>
<br>
<a href="index.jsp">Back to calculator</a>
</body>
</html>
