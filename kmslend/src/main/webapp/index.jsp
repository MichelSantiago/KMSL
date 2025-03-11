<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KMSL</title>
    <style>
        /* Estilo global da página */
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: linear-gradient(135deg, #007BFF, #00BFFF, #0056b3); /* Degradê em tons de azul */
        }

        /* Container centralizado para o formulário de login */
        .login-container {
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        /* Título estilizado */
        h2 {
            text-align: center;
            color: #0056b3;
        }

        /* Estilo dos rótulos (labels) */
        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        /* Estilo dos campos de entrada (input) */
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
        }

        /* Botão de envio */
        button {
            width: 100%;
            background-color: #007BFF;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        /* Efeito de hover no botão */
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>     
        <!-- Formulário de login que envia os dados para a rota /login -->
        <form action="/cadastroproduto" method="post">
            <label for="email">E-mail:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Senha:</label>
            <input type="password" id="password" name="password" required>
			
            <button type="submit">Entrar</button>
            
        </form>
    </div>
</body>
</html>
