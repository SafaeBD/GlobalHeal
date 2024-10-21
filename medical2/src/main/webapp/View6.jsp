<%@ page import="java.util.List" %>
<%@ page import="MedicalReference.Specialiste" %>
<%@ page import="MedicalReference.SpecialisteDAO" %>
<%@ page import="MedicalReference.SpecialisteDAOImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
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
            top: 35%; /* Ajustement pour faire descendre la barre sombre transparente */
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
            color: #FFFF00; /* Jaune pour "Patient Space" */
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

        #listeSpecialistes {
            display: none;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(64, 64, 64, 0.8); /* Gris foncé avec un ton de transparence légère */
            border-radius: 10px;
            padding: 20px;
            margin-top: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Légère ombre pour la profondeur */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            color: #ffffff; /* Couleur du texte blanc */
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ffffff; /* Bordure blanche entre les lignes */
        }

        th {
            background-color: #1565C0; /* Couleur bleu marine foncée pour les cellules d'en-tête */
        }

        #returnButton {
            background-color: #1565C0; /* Couleur bleu marine foncée */
            color: #ffffff;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }
    </style>
</head>
    
<body>

    <div class="sidebar">
        <div class="title">GlobalHeal</div>
        <div class="separator"></div>
        <a href="view9.jsp"><button class="button">Language</button></a>
        <div class="separator"></div>
        <a href="view92.jsp"><button class="button">Describe Illness</button></a>
        <div class="separator"></div>
        <a href="View97.jsp"><button class="button"> Recommended Treatments</button></a>
        <div class="separator"></div>
        <a href="view95.jsp"><button class="button">schedule Appointment </button></a>
        <div class="separator"></div>
        <a href="View96.jsp"><button class="button"> Select Specialist</button></a>
        <div class="separator"></div>
        <a href="view94.jsp"><button class="button">Logout</button></a>
        <div class="last-separator"></div>
    </div>

    <div class="image-container">
        <img src="https://volklawoffices.com/images/layout/medical-healthcare.jpg" alt="Medical Staff Image">
        <div class="overlay" id="overlay">
            <p>Patient Space</p>
            <span>On this platform you can identify your disease by describing it to competent international specialists, you can obtain treatments described by experts, and even schedule an appointment internationally</span>
        </div>

        <div id="listeSpecialistes">
            <h2 style="color: #ffffff;">Liste des spécialistes :</h2>
            <table style="width: 100%; border-collapse: collapse; color: #ffffff;">
                <thead>
                    <tr>
                        <th style="padding: 15px; text-align: left; border-bottom: 1px solid #ffffff; background-color: #1565C0;">Nom</th>
                        <th style="padding: 15px; text-align: left; border-bottom: 1px solid #ffffff; background-color: #1565C0;">Prenom</th>
                        <th style="padding: 15px; text-align: left; border-bottom: 1px solid #ffffff; background-color: #1565C0;">Specialty</th>
                        <th style="padding: 15px; text-align: left; border-bottom: 1px solid #ffffff; background-color: #1565C0;">country</th>
                        <th style="padding: 15px; text-align: left; border-bottom: 1px solid #ffffff; background-color: #1565C0;">Email</th>
                        
                        
                        
                        <!-- Ajoutez d'autres colonnes au besoin -->
                    </tr>
                </thead>
                <tbody>
       <c:out value="${specialistes}" />
                    <c:forEach var="specialiste" items="${specialistes}">
                        <tr>
                            <td style="padding: 15px; text-align: left; border-bottom: 1px solid #ffffff;">${specialiste.nom}</td>
                            <td style="padding: 15px; text-align: left; border-bottom: 1px solid #ffffff;">${specialiste.specialite}</td>
                            <td style="padding: 15px; text-align: left; border-bottom: 1px solid #ffffff;">${specialiste.pays}</td>
                            <td style="padding: 15px; text-align: left; border-bottom: 1px solid #ffffff;">${specialiste.prenom}</td>
                            <td style="padding: 15px; text-align: left; border-bottom: 1px solid #ffffff;">${specialiste.email}</td>
                            
                            
                            
                            <!-- Ajoutez d'autres colonnes au besoin -->
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <button id="returnButton" onclick="cacherSpecialistes()">Return</button>
        </div>
    </div>

    <script>
        function afficherSpecialistes() {
            var overlay = document.getElementById("overlay");
            overlay.style.display = "none"; // Cacher la barre sombre transparente

            var listeSpecialistes = document.getElementById("listeSpecialistes");
            listeSpecialistes.style.display = "block"; // Afficher la liste des spécialistes
        }

        function cacherSpecialistes() {
            var listeSpecialistes = document.getElementById("listeSpecialistes");
            listeSpecialistes.style.display = "none";
            
            var overlay = document.getElementById("overlay");
            overlay.style.display = "block"; // Réafficher la barre sombre transparente
        }
    </script>

</body>
</html>
