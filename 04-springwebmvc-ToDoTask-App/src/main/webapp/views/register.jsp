<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<style>
/* Body Styling */
body {
    font-family: 'Arial', sans-serif;
    background: linear-gradient(135deg, #667eea, #764ba2);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

/* Registration Container Styling */
.register-container {
    background: #ffffff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
    width: 350px;
}

/* Heading Styling */
.register-container h1 {
    margin-bottom: 20px;
    font-size: 26px;
    color: #333;
    font-weight: bold;
    text-align: center;
}

/* Error Message Styling */
.error-message {
    color: #e74c3c;
    margin-bottom: 15px;
    font-size: 14px;
    text-align: center;
}

/* Form Styling */
.register-container form {
    display: flex;
    flex-direction: column;
    gap: 15px;
}

/* Label Styling */
.register-container label {
    text-align: left;
    font-weight: bold;
    font-size: 14px;
    color: #333;
    margin-bottom: 5px;
}

/* Input Field Styling */
.register-container input {
    width: 100%;
    padding: 12px;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 16px;
    outline: none;
    transition: border-color 0.3s ease;
}

.register-container input:focus {
    border-color: #667eea;
}

/* Button Styling */
.register-container button {
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

.register-container button:hover {
    background: #764ba2;
}

/* Link Styling */
.register-container a {
    color: #667eea;
    text-decoration: none;
    font-size: 14px;
    text-align: center;
}

.register-container a:hover {
    text-decoration: underline;
}

/* Responsive Design */
@media (max-width: 480px) {
    .register-container {
        width: 90%;
        padding: 20px;
    }

    .register-container h1 {
        font-size: 22px;
    }
}
</style>
</head>
<body>
    <div class="register-container">
        <h1>Registration</h1>
        <div class="error-message">${msg}</div>
        <form action="register" method="post">
            <label for="username">Username:</label>
            <input type="text" name="name" placeholder="User Name" required>

            <label for="password">Password:</label>
            <input type="password" name="password" placeholder="Password" required>

            <label for="email">Email:</label>
            <input type="email" name="email" placeholder="Email" required>

            <label for="fullname">Full Name:</label>
            <input type="text" name="fullname" placeholder="Full Name" required>

            <button type="submit">Register</button>
        </form>
        <p>
            Already have an account? <a href="/login">Login here</a>
        </p>
    </div>
</body>
</html>
