<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Order Bill</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        table { border-collapse: collapse; width: 60%; margin-top: 20px; }
        th, td { border: 1px solid #333; padding: 10px; text-align: center; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>
    <h2>Order Bill</h2>
    <%
        String customerName = request.getParameter("customerName");
        String productName = request.getParameter("productName");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double price = Double.parseDouble(request.getParameter("price"));
        double total = quantity * price;
    %>

    <table>
        <tr>
            <th>Customer Name</th>
            <th>Product Name</th>
            <th>Quantity</th>
            <th>Price (per unit)</th>
            <th>Total Amount</th>
        </tr>
        <tr>
            <td><%= customerName %></td>
            <td><%= productName %></td>
            <td><%= quantity %></td>
            <td><%= price %></td>
            <td><%= total %></td>
        </tr>
    </table>
</body>
</html>
