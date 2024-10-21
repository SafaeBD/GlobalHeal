<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

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
            overflow: hidden;
            position: relative;
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
            margin-bottom: 15px;
            width: 100%;
            text-align: left;
        }

        .image-container {
            position: relative;
            overflow: hidden;
        }

        .image-container img {
            width: 100%;
            height: 100vh;
            object-fit: cover;
        }

        .overlay {
            display: none;
            position: absolute;
            top: 35%;
            left: 35%;
            transform: translate(-50%, -50%);
            background-color: rgba(0, 0, 0, 0.5);
            color: #ffffff;
            padding: 42px;
            border-radius: 5px;
            text-align: center;
        }

        .overlay p {
            font-size: 33.25px;
            font-weight: bold;
            color: #FFFF00;
        }

        .overlay .description-input {
            width: 80%;
            margin: 20px auto;
            padding: 10px;
            border: 1px solid #ffffff;
            border-radius: 5px;
            color: #000080;
            background-color: #ffffff;
            resize: none;
        }

        .error-message {
            color: #FF0000;
        }

        .title {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 30px;
            color: #1976D2;
        }

        .separator {
            border-top: 1px solid #ffffff;
            margin: 10px 0;
        }

        .last-separator {
            border-top: 1px solid #ffffff;
            margin-top: 10px;
        }

        .button-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: row;
            margin-top: 20px;
        }

        .save-button,
        .cancel-button {
            display: none;
            background-color: #000080;
            color: #ffffff;
            padding: 15px 20px;
            font-size: 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 0 10px;
        }

        .success-message {
            display: none;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: #000080;
            font-size: 24px;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>

<body>

    <div class="sidebar">
        <div class="title">GlobalHeal</div>
        <div class="separator"></div>
        <button class="button">Language</button>
        <div class="separator"></div>
        <button class="button" onclick="showDescription()">Recommend Treatments</button>
        <div class="separator"></div>
        <button class="button">Get Patient List</button>
        <div class="separator"></div>
        <button class="button">Get Appointments List</button>
        <div class="separator"></div>
        <button class="button">Logout</button>
        <div class="last-separator"></div>
    </div>

    <div class="image-container">
        <img src="https://volklawoffices.com/images/layout/medical-healthcare.jpg" alt="Medical Staff Image">
        <div class="overlay" id="descriptionOverlay">
            <p style="color: #FFFF00;">Recommend Treatments</p>
            <textarea class="description-input" placeholder="Enter your illness description (not more than 300 words)" oninput="checkWordCount()"></textarea>
            <div class="error-message" id="error-message"></div>
            <div class="button-container">
                <button class="save-button" onclick="saveDescription()">add</button>
                <button class="cancel-button" onclick="cancelDescription()">Cancel</button>
            </div>
        </div>
        <div class="success-message" id="successMessage">Description saved successfully!</div>
    </div>

    <script>
        function showDescription() {
            var overlay = document.getElementById('descriptionOverlay');
            overlay.style.display = 'block';
            document.querySelector('.save-button').style.display = 'inline-block';
            document.querySelector('.cancel-button').style.display = 'inline-block';
        }

        function saveDescription() {
            // Ajouter la logique pour sauvegarder la description
            var overlay = document.getElementById('descriptionOverlay');
            var successMessage = document.getElementById('successMessage');
            overlay.style.display = 'none'; // Cacher l'overlay après sauvegarde
            successMessage.style.display = 'block'; // Afficher le message de succès
            setTimeout(function () {
                successMessage.style.display = 'none'; // Cacher le message de succès après quelques secondes
            }, 3000); // Modifier la durée d'affichage du message de succès en millisecondes (3000 = 3 secondes)
        }

        function cancelDescription() {
            var overlay = document.getElementById('descriptionOverlay');
            overlay.style.display = 'none'; // Cacher l'overlay en cas d'annulation
        }

        function checkWordCount() {
            var descriptionInput = document.querySelector('.description-input');
            var errorMessage = document.getElementById('error-message');
            var words = descriptionInput.value.split(/\s+/).length;
            var maxWords = 300;

            if (words > maxWords) {
                errorMessage.textContent = 'Word limit exceeded. Please limit your description to 300 words.';
                descriptionInput.value = descriptionInput.value.split(/\s+/).slice(0, maxWords).join(' ');
            } else {
                errorMessage.textContent = '';
            }
        }
    </script>

</body>

</html>
