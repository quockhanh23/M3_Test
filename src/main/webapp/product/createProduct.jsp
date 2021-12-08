<%--
  Created by IntelliJ IDEA.
  User: Asus VivoBook
  Date: 12/4/2021
  Time: 6:19 PM
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
    <form method="post">
    <div style="background: #2e6da4"><h2 style="text-align: center">Create Form</h2></div>
    <div align="center">
        <form method="post">
            <table border="1" cellpadding="5">
                <tr>
                    <th>Enter Id</th>
                    <td><input type="number" name="id" placeholder="Id"></td>
                </tr>
                <tr>
                    <th>Enter Name</th>
                    <td><input type="text" name="name" placeholder="Name product"></td>
                </tr>
                <tr>
                    <th>Enter Price</th>
                    <td><input type="number" name="price" placeholder="Price"></td>
                </tr>
                <tr>
                    <th>Enter Description</th>
                    <td><input type="text" name="description" placeholder="Description"></td>
                </tr>
                <tr>
                    <th>Enter Action</th>
                    <td><input type="text" name="action1" placeholder="Action"></td>
                </tr>
                <tr>
                    <th>Enter Capacity</th>
                    <td><input type="text" name="capacity" placeholder="Capacity"></td>
                </tr>
                <tr>
                    <th>Enter Barrel</th>
                    <td><input type="text" name="barrel" placeholder="Barrel"></td>
                </tr>
                <tr>
                    <th>Enter Weight</th>
                    <td><input type="text" name="weight" placeholder="Weight"></td>
                </tr>
                <tr>
                    <th>Enter Image</th>
                    <td><input type="text" name="img" placeholder="Image"></td>
                </tr>
                <tr>
                    <th>Enter Category Id</th>
                    <td><input type="text" name="categoryId" placeholder="Category Id"></td>
                </tr>
                <tr>
                    <th>Enter Quantity</th>
                    <td><input type="number" name="quantity" placeholder="Quantity"></td>
                </tr>
            </table>
            <button>Create</button>
            <button><a style="text-decoration: none; color: whitesmoke" href="/products">Back to list product</a></button>
        </form>
    </div>
</form>
</body>
</html>
