# Projet SAE51 - Installation d'un ERP/CRM

## IUT Rouen - Réseaux & Télécoms - BUT3
### Date de début : 15 octobre 2024

## 1. Introduction
Ce projet vise à étudier l'installation et la configuration d'un ERP/CRM pour une entreprise, avec l'implémentation de **Dolibarr** comme solution.

## 2. Équipe
- **Chef de projet** : Mathéo Nouvel
- **Membres** : Robin Morel, Mathéo Nouvel

## 3. Journal de bord

### Mercredi 16/10
- **Durée** : 5h30
- **Activités** :
  - Constitution des équipes et planification initiale.
  - Recherche sur Dolibarr, ses fonctionnalités, et son utilité pour l'entreprise.
  - Première exploration de la documentation officielle de Dolibarr.
  - Répartition des tâches en fonction des compétences et des besoins du projet.

### Jeudi 17/10
- **Durée** : 2h45
- **Activités** :
  - Lecture de la documentation officielle pour mieux comprendre l’installation et les prérequis.
  - Recherche des besoins techniques et préparation de l’environnement de travail (serveurs, systèmes d'exploitation compatibles, etc.).
  - Discussion sur les différentes options d'installation possibles et les outils nécessaires pour le déploiement.

### Jeudi 24/10
- **Durée** : 2h30
- **Activités** :
  - Comparaison de différentes images Docker de Dolibarr pour choisir la meilleure solution pour le projet.
  - Finalisation des choix techniques pour le déploiement.
  - Création d’un document pour résumer les étapes de l’installation, et première exploration du fichier `docker-compose.yml`.

### Vendredi 25/10
- **Durée** : 3h
- **Activités** :
  - Début des tests d'installation de Dolibarr dans Docker.
  - Vérification des dépendances et des configurations requises pour faire fonctionner le conteneur.
  - Écriture d’un script d’installation de base pour tester l’intégration avec MariaDB.
  - Documentation de la mise en place initiale pour référence future.

### Lundi 04/11
- **Durée** : 2h45
- **Activités** :
  - Résolution d’un problème de connexion entre Dolibarr et MariaDB.
  - **Problème rencontré** : erreur de connexion empêchant Dolibarr d’accéder à la base de données MariaDB.
  - **Solution** : mise en place d’un délai dans le script pour s’assurer que MariaDB soit entièrement démarré avant d’essayer de se connecter.
  - Mise à jour du fichier `docker-compose.yml` et reconfiguration des paramètres de connexion.

### Mercredi 06/11
- **Durée** : 5h30
- **Activités** :
  - Planification des prochaines étapes du projet, préparation du script d’installation complet.
  - Révision des différentes méthodes d'installation possibles pour Dolibarr (Docker, fichiers sources, paquets).
  - Réalisation d'une étude comparative des avantages et inconvénients de chaque méthode.
  - Début de la création d’un plan détaillé pour chaque méthode et mise à jour de la documentation.

### Jeudi 07/11
- **Durée** : 2h45
- **Activités** :
  - Test de l’installation via Docker en utilisant les différentes versions disponibles.
  - Mise à jour du fichier `docker-compose.yml` pour intégrer la base de données et le serveur web.
  - Vérification des dépendances entre les services et ajustement des configurations PHP dans le conteneur.
  - Réalisation d’un premier test complet de l’environnement.

### Mercredi 13/11
- **Durée** : 5h30
- **Activités** :
  - Revue et test de la mise en place de Dolibarr avec MariaDB dans Docker.
  - Développement du script d’installation `install.sh` pour automatiser l’installation.
  - Tests sur l'importation des données dans Dolibarr, y compris la gestion des fichiers CSV.
  - Réajustement des configurations en fonction des retours de tests.

### Jeudi 14/11
- **Durée** : 1h15
- **Activités** :
  - Finalisation du script `install.sh`.
  - Réalisation de tests sur l'importation de données sous différents formats (CSV et SQL dump).
  - Révision de la configuration PHP et ajustement des paramètres pour un déploiement stable.

### Lundi 18/11
- **Durée** : 2h45
- **Activités** :
  - Test de l’importation des données via le script `import_csv.sh` et configuration de la base de données.
  - Ajustement des fichiers CSV pour correspondre aux formats attendus par Dolibarr.
  - Recherche des erreurs communes lors de l’importation et résolution de problèmes liés aux encodages et aux types de données.

### Jeudi 21/11
- **Durée** : 5h30
- **Activités** :
  - Finalisation de la mise en place de la solution de sauvegarde automatique pour les données Dolibarr.
  - Test de restauration des données pour s'assurer de la fiabilité de la solution de backup.
  - Ajustement des priorités de démarrage des services Docker, en particulier la séquence de lancement pour éviter les erreurs de dépendance entre MariaDB et Dolibarr.
  - Rédaction de la documentation finale sur le processus d’installation, de configuration et de sauvegarde.

## 4. Description du projet
L'objectif du projet est de migrer vers une solution ERP/CRM hébergée en interne, avec l’implémentation de Dolibarr. Le projet inclut l'automatisation de l'installation et de l'importation des données.

### Cahier des charges
1. Automatisation de l'installation via un script `install.sh`.
2. Automatisation de l'importation des données via un script `import_csv.sh`.
3. Utilisation de Docker pour faciliter l'installation.
4. Mise en place d'un système de sauvegarde des données.

## 5. Prochaines étapes
1. Tester et documenter les différentes méthodes d'installation.
2. Analyser le projet Dolibarr, ses origines et ses concurrents.
3. Explorer l'IHM pour ajouter des modules et tester l'import/export de données.
4. Manipuler la BDD via MySQL et tester l'importation et la modification des fichiers CSV.
5. Étudier les tables Dolibarr et tester l'importation de la configuration.
