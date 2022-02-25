<%--
  Created by IntelliJ IDEA.
  User: Asus VivoBook
  Date: 12/4/2021
  Time: 6:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <form method="post">
        <input type="text" name="title" placeholder="Viết tiêu đề">
        <select name="idCategory">

            <c:forEach var="i" begin="0" end="${category.size()-1}">

                <option value="${category.get(i).id}"> ${category.get(i).name} </option>

            </c:forEach>

        </select>

        <input type="text" name="content" placeholder="Viết nội dung">

        <button> Viết</button>
    </form>
</center>
</body>
</html>