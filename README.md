Calculator Project

Description
This project is a simple calculator built using HTML, CSS, and JavaScript. The calculator allows users to perform basic arithmetic operations such as addition, subtraction, multiplication, and division.

Features
- Addition, subtraction, multiplication, and division operations.
- Responsive design for use on various devices.
- Simple and intuitive user interface.

Technologies Used
- HTML
- CSS
- JavaScript

```html
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CALCULATOR</title>
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
```

              





Screenshots

![1](https://github.com/user-attachments/assets/ba41a50f-ee2f-4e06-b5a4-ba94cdeefa4f)
![2](https://github.com/user-attachments/assets/b9a21c92-7255-4b02-ae7b-b674851a4c81)
![3](https://github.com/user-attachments/assets/f8adc8e7-9d83-44bd-8dbd-9d0523e9ee73)
![4](https://github.com/user-attachments/assets/bccb5a07-1583-4b75-a3b8-f20db0c32cd1)
![5](https://github.com/user-attachments/assets/54730647-32f0-4a20-a0bb-4d6eaff7e2d4)
![6](https://github.com/user-attachments/assets/329d8d01-dedd-4c72-8f1e-156eacacce48)
![7](https://github.com/user-attachments/assets/bbc1424f-07a9-4215-be51-bb4eed848281)
![8](https://github.com/user-attachments/assets/f14953c7-2e92-423e-b068-0626b25a1464)
![9](https://github.com/user-attachments/assets/a521a908-5f3c-4b6f-b01a-779bd4575398)
![10](https://github.com/user-attachments/assets/4b4f23fe-7ca3-4d29-8d78-0a6149040a89)

Usage
1. Clone the repository or download the project files.
2. Open the `index.html` file in your web browser.
3. Use the buttons on the calculator to perform calculations.

Code Explanation
- The HTML file contains the structure of the calculator, including buttons for each digit and operation.
- The CSS file provides the styling for the calculator, ensuring it looks clean and modern.
- The JavaScript file includes the logic for handling button clicks and performing calculations.

Future Improvements
- Add support for more advanced mathematical functions.
- Implement keyboard support for input.
- Enhance error handling and validation.

License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
