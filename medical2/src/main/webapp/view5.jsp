<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Medical Staff Space</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            display: flex;
            height: 100vh;
            overflow: hidden; /* Pour empêcher le défilement vertical */
        }

        .sidebar {
            background-color: #000080;
            color: #ffffff;
            padding: 20px;
            text-align: left;
            display: flex;
            flex-direction: column;
        }

        .button {
            background-color: #000080;
            color: #ffffff;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-bottom: 15px; /* Augmentation de l'espace entre les boutons */
            width: 100%;
            text-align: left;
        }

        .image-container {
            position: relative;
            overflow: hidden;
        }

        .image-container img {
            width: 100%;
            height: 100vh; /* Hauteur égale à la hauteur de la page */
            object-fit: cover; /* Pour couvrir toute la zone avec l'image sans déformation */
        }

        .overlay {
            position: absolute;
            top: 25%; /* Faire descendre davantage */
            left: 35%; /* Écarter davantage vers la droite (ajusté pour réduire l'espace) */
            transform: translate(-50%, -50%);
            background-color: rgba(0, 0, 0, 0.5); /* Ton sombre atténué */
            color: #ffffff;
            padding: 42px; /* Taille de la barre réduite de 30% */
            border-radius: 5px;
            text-align: center;
        }

        .overlay p {
            font-size: 33.25px; /* Taille du texte réduite de 30% */
            font-weight: bold; /* Mettre le texte en gras */
            color: #FFFF00; /* Jaune pour "Medical Staff Space" */
        }

        .overlay span {
            font-size: 24px; /* Taille de l'expression inférieure */
        }

        /* Ajout de styles pour le titre "healthcare" */
        .title {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 30px; /* Augmentation de l'espace entre le titre et les boutons */
            color: #1976D2; /* Couleur bleu marine claire */
        }

        /* Ligne de séparation */
        .separator {
            border-top: 1px solid #ffffff;
            margin: 10px 0; /* Réduction de l'espace entre les séparateurs */
        }

        /* Dernière ligne sous le dernier bouton */
        .last-separator {
            border-top: 1px solid #ffffff;
            margin-top: 10px; /* Réduction de l'espace entre le dernier séparateur et le bas */
        }
    </style>
</head>

<body>

    <div class="sidebar">
        <div class="title">GlobalHeal</div>
        <div class="separator"></div>
        <a href="View990.jsp"><button class="button">Language</button></a>
        <div class="separator"></div>
        <a href="View99.jsp"><button class="button">Get Patient List</button></a>
        <div class="separator"></div>
        <a href="View98.jsp"><button class="button">Recommend Treatment</button></a>
        <div class="separator"></div>
        <a href="View991.jsp"><button class="button"> Get Appointments List</button></a>
        <div class="separator"></div>
        <a href="View992.jsp"><button class="button">Logout</button></a>
        <div class="last-separator"></div>
    </div>

    <div class="image-container">
        <img src="https://volklawoffices.com/images/layout/medical-healthcare.jpg" alt="Medical Staff Image">
        <div class="overlay">
            <p>Medical Staff Space</p>
            <span>On this platform you can follow your international patients, recommend treatments to them and still receive them in your hospital spaces</span>
        </div>
    </div>

</body>     

</html>
