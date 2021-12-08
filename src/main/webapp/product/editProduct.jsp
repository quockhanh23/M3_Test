<%--
  Created by IntelliJ IDEA.
  User: Asus VivoBook
  Date: 12/4/2021
  Time: 7:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        button {
            background: #0f3b62;
            color: whitesmoke;
            border: none;
            font-size: 25px;
            border-radius: 5px;
            margin-top: 10px;
            transition: 0.3s;
            box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

        button:hover {
            transform: scale(1.2);
        }

        body {
            background: #1b6d85;
            color: whitesmoke;
        }
    </style>
</head>
<body>
<div style="background: #2e6da4"><h2 style="text-align: center">Edit Form</h2></div>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <%--    <input type="number" name="id" value="${aloEdit.id}" placeholder="id product">--%>
            <tr>
                <th>Enter Name</th>
                <td><input id="1" onmouseover="changeColor1()" onmouseout="changeColor2()" type="text"
                           onfocus="this.value=''"
                           name="name" value="${aloEdit.name}" placeholder="Name product"></td>
            </tr>
            <tr>
                <th>Enter Price</th>
                <td><input id="2" onmouseover="changeColor1()" onmouseout="changeColor2()" type="number"
                           onfocus="this.value=''"
                           name="price" value="${aloEdit.price}" placeholder="Price"></td>
            </tr>
            <tr>
                <th>Enter Description</th>
                <td>
                    <input id="3" onmouseover="changeColor1()" onmouseout="changeColor2()" type="text"
                           onfocus="this.value=''"
                           name="description" value="${aloEdit.description}" placeholder="Description"></td>
            </tr>
            <tr>
                <th>Enter Action</th>
                <td><input id="4" onmouseover="changeColor1()" onmouseout="changeColor2()" type="text"
                           onfocus="this.value=''"
                           name="action1" value="${aloEdit.action}" placeholder="Action"></td>
            </tr>
            <tr>
                <th>Enter Capacity</th>
                <td><input id="5" onmouseover="changeColor1()" onmouseout="changeColor2()" type="text"
                           onfocus="this.value=''"
                           name="capacity" value="${aloEdit.capacity}" placeholder="Capacity"></td>
            </tr>
            <tr>
                <th>Enter Barrel</th>
                <td><input id="6" onmouseover="changeColor1()" onmouseout="changeColor2()" type="text"
                           onfocus="this.value=''"
                           name="barrel" value="${aloEdit.barrel}" placeholder="Barrel"></td>
            </tr>
            <tr>
                <th>Enter weight</th>
                <td><input id="7" onmouseover="changeColor1()" onmouseout="changeColor2()" type="text"
                           onfocus="this.value=''"
                           name="weight" value="${aloEdit.weight}" placeholder="Weight"></td>
            </tr>
            <tr>
                <th>Enter Image</th>
                <td><input id="8" onmouseover="changeColor1()" onmouseout="changeColor2()" type="text"
                           onfocus="this.value=''"
                           name="img" value="${aloEdit.img}" placeholder="Image"></td>
            </tr>

            <tr>
                <th>Enter Quantity</th>
                <td><input id="10" onmouseover="changeColor1()" onmouseout="changeColor2()" type="number"
                           onfocus="this.value=''"
                           name="quantity" value="${aloEdit.quantity}" placeholder="Quantity"></td>
            </tr>
        </table>
        <button>Edit</button>
        <button><a style="text-decoration: none; color: whitesmoke" href="/products">Back to list product</a></button>
    </form>
</div>
</body>
</html>
<script>
    function changeColor1() {
        document.getElementById('1').style.background = "yellow";
        document.getElementById('2').style.background = "yellow";
        document.getElementById('3').style.background = "yellow";
        document.getElementById('4').style.background = "yellow";
        document.getElementById('5').style.background = "yellow";
        document.getElementById('6').style.background = "yellow";
        document.getElementById('7').style.background = "yellow";
        document.getElementById('8').style.background = "yellow";
        document.getElementById('9').style.background = "yellow";
        document.getElementById('10').style.background = "yellow";
    }

    function changeColor2() {
        document.getElementById('1').style.background = "#ffffff";
        document.getElementById('2').style.background = "#ffffff";
        document.getElementById('3').style.background = "#ffffff";
        document.getElementById('4').style.background = "#ffffff";
        document.getElementById('5').style.background = "#ffffff";
        document.getElementById('6').style.background = "#ffffff";
        document.getElementById('7').style.background = "#ffffff";
        document.getElementById('8').style.background = "#ffffff";
        document.getElementById('9').style.background = "#ffffff";
        document.getElementById('10').style.background = "#ffffff";
    }
</script>
