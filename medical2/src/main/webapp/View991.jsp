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
            top: 40%; /* Ajustement pour faire descendre la barre sombre transparente */
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
            color: #FFFF00; /* Jaune pour "Choose the Appointment" */
        }

        .overlay table {
            width: 100%;
            margin-top: 15px;
            border-collapse: collapse;
            text-align: center;
        }

        .overlay th, .overlay td {
            padding: 10px;
            border: 1px solid #ffffff;
            color: #ffffff;
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

        /* Ajout de styles pour le bouton Submit */
        .submit-button {
            background-color: #4caf50;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 15px;
        }

        .submit-button:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>

    <div class="sidebar">
        <div class="title">GlobalHeal</div>
        <div class="separator"></div>

        <button class="button"> Get Appointments List</button>

        <div class="separator"></div>
        <button class="button">Get Patient List</button>
        <div class="separator"></div>
        <button class="button">Recommend Treatments</button>
        <div class="separator"></div>
        <button class="button">Schedule Appointment</button>
        <div class="separator"></div>
      
        <button class="button">Logout</button>
        <div class="last-separator"></div>
    </div>

    <div class="image-container">
        <img src="https://volklawoffices.com/images/layout/medical-healthcare.jpg" alt="Medical Staff Image">
        <div class="overlay">
            <p>List Appointment</p>
            <table>
                <tr>
                    <th>Patient</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Place</th>
                </tr>
                <tr>
                    <td>Albertof FGHU</td>
                    <td>15/01/2024</td>
                    <td>12:00</td>
                    <td>Paris</td>
                </tr>
                <tr>
                    <td> ALFred Royz</td>
                    <td>24/12/2023</td>
                    <td>16:15</td>
                    <td>New York</td>
                </tr>
                <tr>
                    <td> Khaled Ramiz </td>
                    <td>02/03/2024</td>
                    <td>08:30</td>
                    <td>Marakech</td>
                </tr>
                <tr>
                    <td> Omar chamis </td>
                    <td>17/01/2024</td>
                    <td>10:00</td>
                    <td>Rabat</td>
                </tr>
            </table>
            <button class="submit-button">Return</button>
        </div>
    </div>

</body>

</html>
    