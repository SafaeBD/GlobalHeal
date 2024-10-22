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
            padding: 10px; /* Taille de la barre r�duite au minimum */
            border-radius: 5px;
            text-align: center;
        }

        .overlay p {
            font-size: 19px; /* Taille du texte r�duite au minimum */
            color: #ffffff; /* Texte en blanc */
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
            <p>M�dicaments :
                B�ta-bloquants : pour r�duire la fr�quence cardiaque.
                Inhibiteurs de l'enzyme de conversion de l'angiotensine (IEC) : pour abaisser la pression art�rielle.
                Diur�tiques : pour r�duire l'accumulation de liquide dans le corps.
                Antiagr�gants plaquettaires : pour pr�venir la formation de caillots sanguins.</p>

            <p>Changements de style de vie :
                Adoption d'un r�gime alimentaire sain et �quilibr�, faible en gras satur�s et en sodium.
                Exercice r�gulier et adapt� � la condition physique du patient.
                Cesser de fumer.
                R�duction de la consommation d'alcool.</p>

            <p>Proc�dures m�dicales :
                Angioplastie et pose de stent : pour ouvrir les art�res coronaires.
                Pontage coronarien : pour contourner les art�res coronaires bloqu�es.
                Cardioversion : pour restaurer le rythme cardiaque normal.</p>

            <p>Gestion du stress :
                Techniques de gestion du stress, telles que la m�ditation et la relaxation.
               </p>
            <div class="checkbox-container">
                <label class="checkbox-label" for="treatmentCheckbox">I agree to the treatment</label>
                <input type="checkbox" id="treatmentCheckbox" class="checkbox">
            </div>
        </div>
    </div>

</body>

</html>