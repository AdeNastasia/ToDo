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
    <title>Просмотр дел</title>
</head>
<body>
<p>
    <%@ page import="model.Deal" %>
    <%@ page import="java.util.List" %>
    <%

        List<Deal> deals = Deal.getDeals();
        if (deals.size() == 0) {
            out.println("<p>Ух ты! Никаких дел на сегодня :)</p>");
        } else {


            for (int i = 0; i < deals.size(); i++) { // сейчас вывожу через fori, чтобы отображать порядковый номер, но, возможно, перенесу это в логику Deal
                out.println("<p>" + (i + 1) + ". " + deals.get(i) + "</p>"); // теги для того, чтобы значение списка выводилось с новой строки
            }
        }

    %>

    <button onclick="location.href='/'">На главную</button>

</p>

</body>
</html>
