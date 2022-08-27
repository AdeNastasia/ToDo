<%--
  Created by IntelliJ IDEA.
  User: kaya
  Date: 27/08/2022
  Time: 4:08 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/css/styleForIndex.css" rel="stylesheet" type="text/css">
    <title>Добавим дело</title>
</head>
<body>
<p>
    <%@ page import="model.Deal" %>
    <%@ page import="java.time.LocalDate" %>
</p>
<form method="post">
    <label>Что вы хотите сделать?
        <input type="text" name="name">
    </label>
    <p></p>
    <button type="submit">Добавить</button>

</form>

<button onclick="location.href='/'">На главную</button> <!-- надо узнать, почему работает только после блока <form>, а внутри него не работает -->

<p>
    <%
        request.setCharacterEncoding("UTF-8"); // чтобы отображалась кириллица
        String name = request.getParameter("name");
        if (name != null) { // добавила такое условие, т.к. без него первым в список добавляется null, надо разобраться, почему так
            Deal deal = new Deal(LocalDate.now(), name);
            Deal.addNewDeal(deal);
        }

    %>
</p>

</body>
</html>
