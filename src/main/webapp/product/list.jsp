<%--
  Created by IntelliJ IDEA.
  User: Asus VivoBook
  Date: 12/7/2021
  Time: 11:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/products?action=createProduct">Create new product</a>
<h2>List Product</h2>
<c:forEach var="i" begin="0" end="${alo.size()-1}">
    <h4>${alo.get(i).id}
          ${alo1.get(i).name}${alo2.get(i).name}
        <a href="/products?action=editProduct&id=${alo.get(i)}">Edit</a>
        <a href="/products?action=deleteProduct&id=${alo.get(i)}">Delete</a>
    </h4>
</c:forEach>
</body>
</body>
</html>
