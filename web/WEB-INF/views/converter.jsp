<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: minhlee
  Date: 8/16/18
  Time: 8:27 AM
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
        padding: 10px 10px 20px;
    }

</style>
<head>
    <title>Currency Converter</title>
</head>
<body>
<form action="/convert">
    <fieldset>
        <legend><h2>Converter</h2></legend>
        <table>
            <tr>
                <td>Currency</td>
                <td>
                    <select name="currency">
                        <option name="USD" value="USD">USD to VND</option>
                        <option name="EURO" value="Euro">Euro to VND</option>
                        <option name="VND1" value="Vietnamese dong">VND to USD</option>
                        <option name="VND2" value="Vietnamese dong">VND to Euro</option>
                    </select>
                </td>
                <td>

            </tr>
            <tr>
                <td>Amount</td>
                <td><input type="text" name="amount" placeholder="Enter your amount of money in your currency"></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <button class="btn btn-secondary" type="submit">Convert</button>
                </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
