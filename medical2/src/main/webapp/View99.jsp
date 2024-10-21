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
            overflow: hidden; /* Pour emp�cher le d�filement vertical */
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
            height: 100vh; /* Hauteur �gale � la hauteur de la page */
            object-fit: cover; /* Pour couvrir toute la zone avec l'image sans d�formation */
        }

        .overlay {
            position: absolute;
            top: 50%; /* Ajustement pour centrer la barre sombre transparente */
            left: 50%; /* �carter davantage vers la droite (ajust� pour r�duire l'espace) */
            transform: translate(-50%, -50%);
            background-color: rgba(0, 0, 0, 0.5); /* Ton sombre att�nu� */
            color: #ffffff;
            padding: 42px; /* Taille de la barre r�duite de 30% */
            border-radius: 5px;
            text-align: center;
        }

        .overlay p {
            font-size: 33.25px; /* Taille du texte r�duite de 30% */
            font-weight: bold; /* Mettre le texte en gras */
            color: #FFFF00; /* Jaune pour "Get Patient List" */
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

        /* Ligne de s�paration */
        .separator {
            border-top: 1px solid #ffffff;
            margin: 10px 0; /* R�duction de l'espace entre les s�parateurs */
        }

        /* Derni�re ligne sous le dernier bouton */
        .last-separator {
            border-top: 1px solid #ffffff;
            margin-top: 10px; /* R�duction de l'espace entre le dernier s�parateur et le bas */
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
        <button class="button">Get Patient List</button>
        <div class="separator"></div>
        <button class="button">Recommend Treatments</button>
        <div class="separator"></div>
        <button class="button">Get Appointments List</button>
        <div class="separator"></div>
        
        <button class="button">Logout</button>
        <div class="last-separator"></div>
    </div>

    <div class="image-container">
        <img src="https://volklawoffices.com/images/layout/medical-healthcare.jpg" alt="Medical Staff Image">
        <div class="overlay">
            <p> Patient List</p>
            <table>
                <tr>
                   <th>patient</th>
                   <th>Email</th>
                   <th>Maladie</th>
                   <th>Place</th>
                </tr>
                <tr>
 
                    <td>yasser chali</td>
                    <td>yassert523@gmail.com</td>
                    <td>Diabetes</td>
                    <td>ERRACHIDIA</td>
                </tr>
                <tr>
              
                    <td>NOR FUJI</td>
                    <td>NOR200@gmail.com</td>
                    <td>Heart Disease</td>
                    <td>Danmark</td>
                </tr>
                <tr>
                    
                    <td>john ijko</td>
                    <td>john44@gmail.com</td>
                    <td> Psychological</td>
                    <td>Dubai </td>
                </tr>
 
            </table>
            <button class="submit-button">Submit</button>
        </div>
    </div>

</body>

</html>
    