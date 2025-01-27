<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tracker Dashboard</title>
<style>
body {
    font-family: 'Arial', sans-serif;
    background: linear-gradient(135deg, #667eea, #764ba2);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    animation: fadeIn 1s ease-in;
}

@keyframes fadeIn {
    0% { opacity: 0; }
    100% { opacity: 1; }
}

.tracker-container {
    background: #ffffff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
    width: 400px;
    text-align: center;
    animation: slideUp 0.8s ease-out;
}

@keyframes slideUp {
    0% { transform: translateY(30px); opacity: 0; }
    100% { transform: translateY(0); opacity: 1; }
}

.tracker-container h1 {
    margin-bottom: 20px;
    font-size: 24px;
    color: #333;
    text-transform: uppercase;
    letter-spacing: 1px;
}

.tracker-container button {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    background: #667eea;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s ease, transform 0.3s ease;
}

.tracker-container button:hover {
    background: #764ba2;
    transform: translateY(-5px);
}
</style>
</head>
<body>
    <div class="tracker-container">
        <h1>Welcome to Expense Tracker</h1>
        <button onclick="window.location.href='/addExpnse'">Add Expense</button>
        <button onclick="window.location.href='/expenseList'">Show All Expenses</button>
    </div>
</body>
</html>
