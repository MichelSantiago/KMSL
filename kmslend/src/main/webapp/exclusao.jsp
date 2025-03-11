<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Excluir Produto - Sistema CRUD</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background: linear-gradient(135deg, #007BFF, #00BFFF, #0056b3);
        }

        .delete-container {
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        h2 {
            color: #0056b3;
        }

        p {
            color: #333;
            margin-bottom: 30px;
        }

        button {
            width: 45%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            color: white;
        }

        .confirm-btn {
            background-color: #DC3545;
        }

        .confirm-btn:hover {
            background-color: #C82333;
        }

        .cancel-btn {
            background-color: #007BFF;
        }

        .cancel-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="delete-container">
        <h2>Confirmar Exclusão</h2>
        <p>Tem certeza de que deseja excluir o produto <strong>Produto Exemplo</strong> (Código: 001)?</p>
        <form action="/produtos/excluir" method="post">
            <input type="hidden" name="codigo" value="001">
            <button type="submit" class="confirm-btn">Excluir</button>
            <button type="button" class="cancel-btn" onclick="window.location.href='/produtos'">Cancelar</button>
        </form>
    </div>
</body>
</html>
