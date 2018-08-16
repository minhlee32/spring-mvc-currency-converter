<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: minhlee
  Date: 8/16/18
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
  fieldset {
    width: 500px;
    margin: 150px auto;
  }

  h2 {
    color: cornflowerblue;
  }

  tr {
    padding: 15px 15px 25px;
  }

  td {
    padding: 15px 15px 25px;
  }


</style>
<head>
  <title>Currency Converter</title>
</head>
<body>
<fieldset>
  <legend><h2>Converter</h2></legend>
  <table>
    <tr>
      <td>Currency</td>
      <td>${currency}</td>
    </tr>
    <tr>
      <td>Rate</td>
      <td>${rate}</td>
    </tr>
    <tr>
      <td>Amount</td>
      <td>${amount}</td>
    </tr>
    <tr>
      <td>Converted equals to</td>
      <td>
        <c:choose>
          <c:when test="${currency == 'USD'}">${result} VND</c:when>
          <c:when test="${currency == 'Euro'}">${result} VND</c:when>
          <c:when test="${currency == 'VND1'} ">${result} $</c:when>
          <c:otherwise>${result} €</c:otherwise>
        </c:choose>
      </td>
    </tr>
  </table>
</fieldset>
</body>
</html>