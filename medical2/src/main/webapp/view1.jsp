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
        }

        h1 {
            color: #000080;
            font-size: 48px;
            font-weight: bold;
            position: fixed;
            top: 20px; /* Ajustez la position verticale selon vos préférences */
            left: 50%;
            transform: translateX(-50%);
            width: fit-content; /* Ajuste la largeur au contenu */
            z-index: 1; /* Assure que le titre reste au-dessus des autres éléments */
            border: 5px solid #87CEEB; /* Diminution de l'épaisseur de la bordure à 5px */
            border-radius: 5px; /* Ajout du rayon de bordure */
            padding: 10px; /* Ajout de la marge intérieure */
            background: linear-gradient(to right, #87CEEB, #00BFFF); /* Ajout d'un dégradé brillant */
            color: transparent; /* Rend le texte transparent pour montrer le dégradé */
            -webkit-background-clip: text; /* Permet au dégradé de s'appliquer au texte */
        }

        .content {
            padding: 20px;
            background: rgba(0, 0, 0, 0.3);
            border-radius: 10px;
            width: 100%;
            position: fixed;
            top: 50%;
            transform: translateY(-50%);
            z-index: 1;
        }

        h2 {
            color: #ffffff;
            font-size: 24px;
            margin-bottom: 20px;
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
    </style>
</head>

<body>

    <h1 style="color: #000080;">GlobalHeal</h1>

    <div class="content">
        <h2>Welcome to your space</h2>

        <p>Login as:</p>

        <!-- Utilisation de liens pour rediriger vers différentes pages -->
        <a href="View20.jsp"><button class="button">Patient</button></a>
        <a href="View21.jsp"><button class="button">Medical staff</button></a>
    </div>

</body>
 
</html>
