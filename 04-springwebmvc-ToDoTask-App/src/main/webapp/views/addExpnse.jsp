<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Expense</title>
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

.add-expense-container {
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

.add-expense-container h1 {
    margin-bottom: 20px;
    font-size: 24px;
    color: #333;
    text-transform: uppercase;
    letter-spacing: 1px;
}

.add-expense-container input {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 16px;
    outline: none;
    transition: border-color 0.3s ease;
}

.add-expense-container input:focus {
    border-color: #667eea;
}

.add-expense-container button {
    width: 100%;
    padding: 12px;
    margin-top:40px;
    background: #667eea;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s ease, transform 0.3s ease;
    letter-spacing: 1px;
}

.add-expense-container button:hover {
    background: #764ba2;
    transform: translateY(-5px);
}

.success-message, .error-message {
    margin-top: 20px;
    font-size: 16px;
    font-weight: bold;
    color: #28a745; 
}

.error-message {
    color: #dc3545; 
}
</style>
</head>
<body>
    <div class="add-expense-container">
        <h1>Add New Expense</h1>

        <div>
            <c:if test="${not empty message}">
                <p style="color: green;">${message}</p>
            </c:if>
            <c:if test="${not empty errorMessage}">
                <p class="error-message">${errorMessage}</p>
            </c:if>
        </div>

        <form action="/addExpnse" method="post">
            <input type="text" name="expenseName" placeholder="Expense Name" required>
            <input type="number" name="amount" placeholder="Amount" required>
            <input type="date" name="date" placeholder="Date" required>
            <input type="text" name="description" placeholder="Description" required>
            <button type="submit">Add Expense</button>
            <button onclick="window.location.href='/expenseList'">Show All Expenses</button>
        </form>
    </div>
</body>
</html>
