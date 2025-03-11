<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro e Gerenciamento de Produtos - Sistema CRUD</title>
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

        /* Container centralizado para as operações de produto */
        .product-container {
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }

        /* Título estilizado */
        h2 {
            text-align: center;
            color: #0056b3;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
        }

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

        button:hover {
            background-color: #0056b3;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #007BFF;
            color: #ffffff;
        }

        .action-btn {
            padding: 5px 10px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            color: white;
        }

        .edit-btn {
            background-color: #FFC107;
        }

        .delete-btn {
            background-color: #DC3545;
        }

        .edit-btn:hover {
            background-color: #E0A800;
        }

        .delete-btn:hover {
            background-color: #C82333;
        }
    </style>
</head>
<body>
    <div class="product-container">
        <h2>Cadastro de Produtos</h2>
        <form action="/produtos/salvar" method="post">
            <label for="codigo">Código:</label>
            <input type="text" id="codigo" name="codigo" required>

            <label for="descricao">Descrição:</label>
            <input type="text" id="descricao" name="descricao" required>

            <label for="quantidade">Quantidade:</label>
            <input type="number" id="quantidade" name="quantidade" required>

            <button type="submit">Salvar Produto</button>
        </form>

        <h2>Consulta de Produtos</h2>
        <table>
            <tr>
                <th>Código</th>
                <th>Descrição</th>
                <th>Quantidade</th>
                <th>Ações</th>
            </tr>
            <tr>
                <td>001</td>
                <td>Produto Exemplo</td>
                <td>10</td>
                <td>
                    <button class="action-btn edit-btn" onclick="window.location.href='/produtos/editar.html?codigo=001'">Editar</button>
                    <button class="action-btn delete-btn" onclick="window.location.href='/produtos/excluir.html?codigo=001'">Excluir</button>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>

    