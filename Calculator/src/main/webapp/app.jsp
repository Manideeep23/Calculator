<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MERN LAB - CALCULATOR</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f4f6;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
        .calculator {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 300px;
        }
        .display {
            width: 100%;
            padding: 10px;
            font-size: 24px;
            text-align: right;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .buttons {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 10px;
        }
        button {
            padding: 15px;
            font-size: 18px;
            background: #e2e8f0;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background: #cbd5e1;
        }
    </style>
    <script>
        function handleClick(value) {
            let display = document.getElementById("display");
            if (value === "=") {
                try {
                    display.value = eval(display.value);
                } catch (e) {
                    display.value = "Error";
                }
            } else if (value === "C") {
                display.value = "";
            } else {
                display.value += value;
            }
        }
    </script>
</head>
<body>
    <h1>CALCULATOR</h1>
    <div class="calculator">
        <input type="text" id="display" class="display" readonly>
        <div class="buttons">
            <% String[] buttons = {"1", "2", "3", "+", "4", "5", "6", "-", "7", "8", "9", "*", "0", "=", "C", "/"};
               for (String btn : buttons) { %>
                <button onclick="handleClick('<%= btn %>')"><%= btn %></button>
            <% } %>
        </div>
    </div>
</body>
</html>
