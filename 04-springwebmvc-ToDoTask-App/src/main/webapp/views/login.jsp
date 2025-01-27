<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .login-container {
        background: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        width: 350px;
        text-align: center;
    }

    .login-container h1 {
        margin-bottom: 20px;
        font-size: 26px;
        color: #333;
        font-weight: bold;
    }

    .error-message {
        color: #e74c3c;
        margin-bottom: 15px;
        font-size: 14px;
    }

    .login-container input {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 16px;
        outline: none;
        transition: border-color 0.3s ease;
    }

    .login-container input:focus {
        border-color: #667eea;
    }

    .login-container button {
        width: 100%;
        padding: 12px;
        background: #667eea;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    .login-container button:hover {
        background: #764ba2;
    }

    .login-container a {
        color: #667eea;
        text-decoration: none;
        font-size: 14px;
    }

    .login-container a:hover {
        text-decoration: underline;
    }

    @media (max-width: 480px) {
        .login-container {
            width: 100%;
            padding: 20px;
        }

        .login-container h1 {
            font-size: 20px;
        }
    }
</style>
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>
        <div class="error-message">${msg}</div>
        <form action="login" method="post">
            <input type="email" name="email" placeholder="Enter your email" required>
            <input type="password" name="password" placeholder="Enter your password" required>
            <button type="submit">Login</button>
        </form>
        <p>Don't have an account? <a href="/">Register here</a></p>
        <p><a href="/forgot-password">Forgot password?</a></p>
    </div>
</body>
</html>
