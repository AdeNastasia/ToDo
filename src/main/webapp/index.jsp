<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link href="${pageContext.request.contextPath}/css/styleForIndex.css" rel="stylesheet" type="text/css">
    <!-- для отображения стилей, я подставила только <link href="/css/styleForIndex.css" rel="stylesheet" type="text/css">, а потом нажала на alt + enter и идея прописала путь корректно -->
    <title>Список дел</title>
</head>
<body>
<!-- header -->

<div class="start">
<h1>Приложение для ведения дел</h1>

<div>       <!-- content -->
    <div>    <!-- buttons holder -->
        <button onclick="location.href='/add'">Добавить новое дело</button>
        <button onclick="location.href='/show'">Посмотреть все дела</button>
    </div>
</div>
</div>
</body>
</html>