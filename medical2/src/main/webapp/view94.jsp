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
            top: 35%; /* Ajustement pour faire descendre la barre sombre transparente */
            left: 35%; /* �carter davantage vers la droite (ajust� pour r�duire l'espace) */
            transform: translate(-50%, -50%);
            background-color: rgba(0, 0, 0, 0.5); /* Ton sombre att�nu� */
            color: #ffffff;
            padding: 42px; /* Taille de la barre r�duite de 30% */
            border-radius: 5px;
            text-align: center;
            display: flex; /* Ajout de display flex pour aligner le contenu au centre */
            flex-direction: column; /* Aligner le contenu au centre */
        }

        .overlay span {
            font-size: 24px; /* Taille de l'expression inf�rieure */
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .button-container button {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 48%; /* Ajustement de la largeur des boutons */
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
    </style>
</head>

<body>

    <div class="sidebar">
        <div class="title">GlobalHeal</div>
        <div class="separator"></div>
        <button class="button">Language</button>
        <div class="separator"></div>
        <button class="button" onclick="showLogoutQuestion()">Describe Illness</button>
        <div class="separator"></div>
        <button class="button">Recommended Treatments</button>
        <div class="separator"></div>
        <button class="button">Schedule Appointment</button>
        <div class="separator"></div>
        <button class="button">Select Specialist</button>
        <div class="separator"></div>
        <button class="button">Logout</button>
        <div class="last-separator"></div>
    </div>

    <div class="image-container">
        <img src="https://volklawoffices.com/images/layout/medical-healthcare.jpg" alt="Medical Staff Image">
        <div class="overlay" id="logoutQuestionOverlay">
            <span>Are you sure you want to logout?</span>
            <div class="button-container">
            
                    <a href="view1.jsp"><button class="logout()">  OK  </button></a>
                    <a href="view94.jsp"><button class="hideLogoutQuestion()">  Cancel  </button></a>
            
            </div>
        </div>
    </div>

    <script>
        function showLogoutQuestion() {
            document.getElementById('logoutQuestionOverlay').style.display = 'flex';
        }

        function hideLogoutQuestion() {
            document.getElementById('logoutQuestionOverlay').style.display = 'none';
        }

        function logout() {
            // Ajoutez le code de d�connexion ici
            alert('Logged out successfully!');
            hideLogoutQuestion(); // Cacher la question apr�s la d�connexion
        }
    </script>

</body>

</html>
