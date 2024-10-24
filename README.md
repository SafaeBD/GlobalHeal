# **GlobalHeal**

GlobalHeal est une plateforme numérique visant à connecter les professionnels de santé internationaux avec les patients qui ne peuvent pas trouver les soins adaptés dans leur pays, en raison d'obstacles tels que le manque d'expertise ou de matériel médical. La plateforme facilite une collaboration transparente, offrant des services de santé personnalisés tout en permettant aux professionnels de la santé de développer leur expertise et leur réputation à l’échelle mondiale.

## **Fonctionnalités**

### **1. Inscription et Connexion**
- Les patients et le personnel médical peuvent s'inscrire ou se connecter. Les patients doivent fournir des informations de base (nom, pays, email, ID, spécialité( pour staff médical)..).

<div style="display: flex; align-items: center;">
  <img src="https://github.com/user-attachments/assets/e9d7c952-a3fd-4b6c-8fd8-025224d6871d" alt="Image 1" style="height: 200px; object-fit: contain;"/>
  <img src="https://github.com/user-attachments/assets/be7ffb22-d70a-4581-a7d5-025bdece9685" alt="Image 2" style="height: 200px; object-fit: contain;"/>
</div>


### **2. Espace Patient** 

- **Choix de la Langue** 
- **Décrire la Maladie** 
- **Choisir un Spécialiste** 
- **Prendre Rendez-vous** 
- **Recommandations de Traitement :** Les patients peuvent recevoir des plans de traitement à distance si le déplacement n'est pas nécessaire.

<div style="display: flex; justify-content: space-between;">
  <img src="https://github.com/user-attachments/assets//61235be0-2360-47d0-b7ca-26eae250cabc" alt="Image 1" style="height: 200px; object-fit: contain;"/>
  <img src="https://github.com/user-attachments/assets/ba6a7b0a-2fc8-478d-b125-e4e019c7b32d" alt="Image 2" style="height: 200px; object-fit: contain;"/>
</div>


### **3. Espace Personnel Médical**
- **Choix de la Langue** 
- **Gestion des Patients :** Voir la liste des patients en attente de traitement ou de consultation.
- **Gestion des Rendez-vous :** Gérer l’agenda des consultations avec les patients.

<div style="display: flex; justify-content: space-between;">
  <img src="https://github.com/user-attachments/assets//5de27a56-5d77-4127-9b45-37034fbe2ec4" alt="Image 1" style="height: 200px; object-fit: contain;"/>
  <img src="https://github.com/user-attachments/assets/9a48df80-435a-4730-a375-ebe5b525d7d8" alt="Image 2" style="height: 200px; object-fit: contain;"/>
</div>



## **Installation**

Pour installer le projet en local, suis ces étapes :

1. Clone le dépôt :
    ```bash
    git clone https://github.com/SAFAEBD/GlobalHeal.git
    ```
2. Installe les dépendances nécessaires avec Maven ou Gradle (selon ta configuration).
3. Configure une base de données MySQL et importe le schéma depuis le fichier `/db/schema.sql`.
4. Modifie la connexion à la base de données dans `DBsingleConnection.java` pour pointer vers ton instance MySQL.
5. Lance l’application sur un serveur comme Apache Tomcat.

## **Utilisation**

Après avoir configuré l’application, accède à l'URL `http://localhost:8080/GlobalHeal` :

- **Se connecter en tant que patient** pour décrire une maladie et planifier des rendez-vous.
- **Se connecter en tant que professionnel médical** pour voir les détails des patients et gérer les rendez-vous.

## **Architecture**

- **Backend** : JEE (Java Enterprise Edition) est utilisé pour la logique et la structure de la plateforme, avec des Servlets pour traiter les requêtes HTTP.
- **Base de données** : MySQL est utilisé pour stocker les données des patients, médecins, rendez-vous et maladies.
- **Pattern DAO** : Les classes DAO (`PatientDAO.java`, `SpecialistDAO.java`, etc.) gèrent toutes les interactions avec la base de données MySQL.
- **Pages Web** : Les fichiers JSP sont utilisés pour créer l'interface utilisateur dynamique. Ces pages sont rendues par les Servlets et affichent les informations des patients et médecins.

## **Conception de la Base de Données**

- **Entités** : 
  - `Patient`
  - `Specialist`
  - `Maladie` 
  - `Traitement` 
- Chaque entité possède sa classe DAO qui gère les opérations de base de données pour cette entité.

## **Contribution**

Les contributions à GlobalHeal sont les bienvenues. Merci de forker le dépôt et de soumettre une pull request pour toute correction de bug ou ajout de fonctionnalité.

## **Licence**

Ce projet est sous licence MIT – voir le fichier LICENSE pour plus de détails.
