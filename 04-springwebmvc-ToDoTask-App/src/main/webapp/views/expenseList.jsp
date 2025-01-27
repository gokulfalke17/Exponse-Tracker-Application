<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expense List</title>
    <style>
        /* Base Styling */
        body {
            font-family: 'Arial', sans-serif;
            background: #f4f6f9;
            margin: 0;
            padding: 20px;
            animation: fadeIn 0.8s ease-in-out;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        .container {
            max-width: 1000px;
            margin: 0 auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #2c3e50;
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 20px;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            font-size: 0.95rem;
        }

        table th, table td {
            padding: 12px 15px;
            text-align: left;
            border: 1px solid #ddd;
        }

        table th {
            background-color: #1abc9c;
            color: white;
            text-transform: uppercase;
            font-size: 0.85rem;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        table tr:hover {
            background-color: #f4f4f4;
            cursor: pointer;
        }

        /* Button Styling */
        .btn {
            display: inline-block;
            padding: 8px 16px;
            font-size: 0.9rem;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
            color: white;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .btn-edit {
            background-color: #3498db;
        }

        .btn-edit:hover {
            background-color: #2980b9;
            transform: scale(1.05);
        }

        .btn-delete {
            background-color: #e74c3c;
        }

        .btn-delete:hover {
            background-color: #c0392b;
            transform: scale(1.05);
        }

        /* Add Expense Button */
        .add-expense-btn {
            display: inline-block;
            padding: 12px 25px;
            background: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 1rem;
            font-weight: bold;
            margin-top: 20px;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .add-expense-btn:hover {
            background: #2980b9;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Expense List</h1>
        <table>
            <thead>
                <tr>
                    <th>#</th>
                    <th>Expense Name</th>
                    <th>Amount</th>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${expenses}" var="expense" varStatus="status">
                    <tr>
                        <td>${status.index + 1}</td>
                        <td>${expense.expenseName}</td>
                        <td>${expense.amount}</td>
                        <td><fmt:formatDate value="${expense.date}" pattern="dd-MM-yyyy" /></td>
                        <td>${expense.description}</td>
                        <td>
                            <a href="editExpense/${expense.id}" class="btn btn-edit">Edit</a>
                            <a href="/deleteExpense/${expense.id}" class="btn btn-delete" onclick="return confirm('Are you sure?')">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <%--  <div class="pagination">
            <c:forEach begin="1" end="${expenses.totalPages}" var="page">
                <a href="?page=${page - 1}&size=5" class="${page == expenses.number + 1 ? 'active' : ''}">${page}</a>
            </c:forEach>
        </div> --%>
        
        <a href="/addExpnse" class="add-expense-btn">Add New Expense</a>
    </div>
</body>
</html>
