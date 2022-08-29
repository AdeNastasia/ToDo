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
<p>
    <%@ page import="model.Deal, java.util.List, java.time.format.DateTimeFormatter" %>
    <%
    List<Deal> deals = Deal.getDeals();
    if (deals.size() < 1 ) { // тут была ошибка в знаке, поправила
      out.println("<p>Ух ты! Никаких дел на сегодня :)</p>");
    } else {
        Deal deal;
        String formattedDate;
      for (int i = 0; i < deals.size(); i++) { // сейчас вывожу через fori, чтобы отображать порядковый номер, но, возможно, перенесу это в логику Deal
          deal = deals.get(i);
          formattedDate = deal.getDate().format(DateTimeFormatter.ofPattern("dd MMMM yyyy")); // форматирование даты
          out.println("<p>" + (i + 1) + ". " + deal + " — " + formattedDate + "</p>"); // теги для того, чтобы значение списка выводилось с новой строки
      }
    }

  %>

    <button onclick="location.href='/'">На главную</button>
</p>

</html>
