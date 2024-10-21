<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>







<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Espace Healthcare</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('https://cdn1.vectorstock.com/i/1000x1000/14/20/medical-background-showing-world-health-day-vector-30721420.jpg');
            background-size: cover;
            background-position: center top;
            background-repeat: no-repeat;
            background-attachment: fixed;
            color: #ffffff;
            font-family: Arial, sans-serif;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            position: relative;
        }

        h1 {
            color: #000080;
            font-size: 48px;
            font-weight: bold;
            position: fixed;
            top: 20px;
            left: 50%;
            transform: translateX(-50%);
            width: fit-content;
            z-index: 1;
            border: 5px solid #87CEEB;
            border-radius: 5px;
            padding: 10px;
            background: linear-gradient(to right, #87CEEB, #00BFFF);
            color: transparent;
            -webkit-background-clip: text;
        }

        .content {
            padding: 10px;
            background: rgba(0, 0, 0, 0.7);
            border-radius: 10px;
            width: 70%;
            position: absolute;
            bottom: 50px; /* Augmentation de l'espace en bas de la page */
            transform: translateY(0);
            z-index: 1;
        }

        h2 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #ffffff;
        }

        .button {
            background-color: #000080;
            color: #ffffff;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px;
        }

        .hello-text {
            color: #ffffff;
        }

        .input-container {
            margin: 10px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .input-label {
            color: #ffffff;
            font-weight: bold;
            margin-right: 10px;
            width: 150px;
            text-align: right;
        }

        input {
            padding: 10px;
            border: 1px solid #ffffff;
            border-radius: 5px;
            width: 100%;
        }
    </style>
</head>

<body>

    <h1 style="color: #000080;">GlobalHeal</h1>

    <div class="content">
        <h2 class="hello-text">Register!</h2>

        <div class="input-container">
            <div class="input-label">First Name:</div>
            <input type="text" placeholder="Enter your First Name">
        </div>

        <div class="input-container">
            <div class="input-label">Last Name:</div>
            <input type="text" placeholder="Enter your Last Name">
        </div>

        <div class="input-container">
            <div class="input-label">Mail Address:</div>
            <input type="text" placeholder="Enter your Mail Address">
        </div>

        <div class="input-container">
            <div class="input-label">Id_Num:</div>
            <input type="text" placeholder="Enter your Id_Num">
        </div>


        <div class="input-container">
            <div class="input-label">Country:</div>
            <input type="text" placeholder="Enter your Country">
        </div>

        <a href="view91.jsp"><button class="button">Next</button></a>
    </div>

</body>

</html>
