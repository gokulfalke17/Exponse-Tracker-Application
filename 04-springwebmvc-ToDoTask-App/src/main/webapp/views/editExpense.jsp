<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Expense</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
            max-width: 480px;
            width: 100%;
            transition: all 0.3s ease-in-out;
        }

        .form-container:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
            color: #2c3e50;
            font-size: 2rem;
            margin-bottom: 20px;
            font-weight: 600;
            letter-spacing: 0.5px;
        }

        label, input, button {
            display: block;
            width: 100%;
            margin-bottom: 20px;
        }

        input, button {
            padding: 12px;
            border: 2px solid #ccc;
            border-radius: 8px;
            font-size: 1rem;
            color: #333;
            transition: all 0.3s ease;
        }

        input:focus, button:focus {
            outline: none;
            border-color: #1abc9c;
            box-shadow: 0 0 10px rgba(26, 188, 156, 0.4);
        }

        input[type="text"], input[type="number"], input[type="date"] {
            background-color: #fafafa;
        }

        button {
            background-color: #1abc9c;
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        button:hover {
            background-color: #16a085;
            transform: translateY(-2px);
        }

        button:active {
            transform: translateY(1px);
        }

        @media (max-width: 600px) {
            .form-container {
                padding: 20px;
                box-shadow: none;
            }

            h1 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Update Expense</h1>
        <form name="frm" action="/updateExpense" method="POST">
            <input type="hidden" name="id" value="${e.id}" />

            <label for="expenseName">Expense Name ::</label>
            <input type="text" id="expenseName" name="expenseName" value="${e.expenseName}" required />

            <label for="amount">Amount ::</label>
            <input type="number" id="amount" name="amount" value="${e.amount}" required />

            <label for="date">Date ::</label>
            <input type="date" id="date" name="date" value="${e.date}" required />

            <label for="description">Description ::</label>
            <input type="text" id="description" name="description" value="${e.description}" required />

            <button type="submit">Update Expense</button>
        </form>
    </div>
</body>
</html>
