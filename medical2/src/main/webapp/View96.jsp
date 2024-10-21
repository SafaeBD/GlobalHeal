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
            top: 50%; /* Ajustement pour centrer la barre sombre transparente */
            left: 50%; /* Écarter davantage vers la droite (ajusté pour réduire l'espace) */
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
            color: #FFFF00; /* Jaune pour "Choose the specialist" */
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

        <button class="button">Language</button>

        <div class="separator"></div>
        <button class="button">Describe Illness</button>
        <div class="separator"></div>
        <button class="button">Recommended Treatments</button>
        <div class="separator"></div>
        <button class="button">Schedule Appointment</button>
        <div class="separator"></div>
        <button class="button">Select specialist</button>
        <div class="separator"></div>
        <button class="button">Logout</button>
        <div class="last-separator"></div>
    </div>

    <div class="image-container">
        <img src="https://volklawoffices.com/images/layout/medical-healthcare.jpg" alt="Medical Staff Image">
        <div class="overlay">
            <p>Specialist List</p>
            <table>
                <tr>
                    <th>Select</th>
                    <th>Speciality</th>
                    <th>Email</th>
                    <th>Place</th>
                    <th>Doctor</th>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>Cardiologist</td>
                    <td>albert523@gmail.com</td>
                    <td>Paris</td>
                    <td>Dr. Albert Francois</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>Neurology</td>
                    <td>fredroy200@gmail.com</td>
                    <td>New York</td>
                    <td>Dr. Fred Roy</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>Pediatrics</td>
                    <td>aminfajr44@gmail.com</td>
                    <td>Marakech</td>
                    <td>Dr. Amin Fajr </td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>Gynecology</td>
                    <td>khadija621@gmail.com</td>
                    <td>Rabat</td>
                    <td>Dr. Khadija Raghib</td>
                </tr>
                <tr>
                    <td><input type="checkbox"></td>
                    <td>Orthopedics</td>
                    <td>khaled254@gmail.com</td>
                    <td>Dubai</td>
                    <td>Dr. Khaled Rami</td>
                </tr>
            </table>
            <button class="submit-button">Submit</button>
        </div>
    </div>

</body>

</html>