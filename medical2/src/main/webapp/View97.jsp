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
            padding: 10px; /* Taille de la barre réduite au minimum */
            border-radius: 5px;
            text-align: center;
        }

        .overlay p {
            font-size: 19px; /* Taille du texte réduite au minimum */
            color: #ffffff; /* Texte en blanc */
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
        .checkbox-container {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 15px;
        }

        .checkbox-label {
            font-size: 14px;
            color: #ffffff;
            margin-right: 10px;
        }

        .checkbox {
            cursor: pointer;
            width: 20px;
            height: 20px;
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
            <p>Here is your appropriate treatment:</p>
            <p>Médicaments :
                Bêta-bloquants : pour réduire la fréquence cardiaque.
                Inhibiteurs de l'enzyme de conversion de l'angiotensine (IEC) : pour abaisser la pression artérielle.
                Diurétiques : pour réduire l'accumulation de liquide dans le corps.
                Antiagrégants plaquettaires : pour prévenir la formation de caillots sanguins.</p>

            <p>Changements de style de vie :
                Adoption d'un régime alimentaire sain et équilibré, faible en gras saturés et en sodium.
                Exercice régulier et adapté à la condition physique du patient.
                Cesser de fumer.
                Réduction de la consommation d'alcool.</p>

            <p>Procédures médicales :
                Angioplastie et pose de stent : pour ouvrir les artères coronaires.
                Pontage coronarien : pour contourner les artères coronaires bloquées.
                Cardioversion : pour restaurer le rythme cardiaque normal.</p>

            <p>Gestion du stress :
                Techniques de gestion du stress, telles que la méditation et la relaxation.
               </p>
            <div class="checkbox-container">
                <label class="checkbox-label" for="treatmentCheckbox">I agree to the treatment</label>
                <input type="checkbox" id="treatmentCheckbox" class="checkbox">
            </div>
        </div>
    </div>

</body>

</html>