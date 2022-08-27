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
    <title>Просмотр дел</title>
</head>
<body>
 <div>
    <button onclick="location.href='/showAllDeals'">Показать все дела</button>
     <button onclick="location.href='/'">Дела по дням</button> <!-- нужно подумать, как тут лучше организовать вывод-->
     <button onclick="location.href='/'">На главную</button>
 </div>
</body>

</body>
</html>
