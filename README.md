# Projet SAE51 - Installation d'un ERP/CRM

## IUT Rouen - Réseaux & Télécoms - BUT3

### Date de début : 15 octobre 2024

## 1. Introduction

Ce projet a pour objectif d'installer et de configurer un ERP/CRM, **Dolibarr**, pour une entreprise. Le but est d'automatiser l'installation du système ainsi que l'importation des données dans une solution Docker.

## 2. Prérequis

Avant de commencer, voici les éléments nécessaires pour pouvoir tester et utiliser le projet :

- **Docker** installé sur votre machine.
- **Docker Compose** pour gérer les conteneurs.
- Un terminal Unix/Linux ou un terminal PowerShell sous Windows.

## 3. Structure du projet

Voici l'arborescence du projet :

/Projet │ ├── docker-compose.yml # Configuration des services Docker (MariaDB et Dolibarr) ├── install_docker.sh # Script pour installer et configurer Docker, télécharger les images ├── import_bdd.sh # Script pour importer une base de données Dolibarr ├── export_bdd.sh # Script pour exporter la base de données ├── .env # Variables d'environnement pour Docker ├── README.md # Ce fichier contenant les explications et instructions └── backup_bdd.sql # Fichier de sauvegarde de la base de données Dolibarr

markdown
Copier le code

## 4. Explication des fichiers

### docker-compose.yml

Ce fichier contient la configuration nécessaire pour lancer **MariaDB** et **Dolibarr** avec **Docker Compose**. Il définit deux services :

- **mariadb** : La base de données utilisée par Dolibarr.
- **web** : Le conteneur Dolibarr qui communique avec la base de données.

### install_docker.sh

Ce script est utilisé pour préparer l'environnement Docker et télécharger les images nécessaires à l'installation de Dolibarr et MariaDB. Il gère la configuration de **Docker Compose** et lance les conteneurs pour l'application.

### import_bdd.sh

Le script `import_bdd.sh` permet d'importer une base de données **Dolibarr** à partir d'un fichier `.sql`. Ce fichier peut être un export de votre base de données précédente.

### export_bdd.sh

Le script `export_bdd.sh` exporte la base de données **Dolibarr** vers un fichier `.sql`. Ce fichier peut être utilisé pour effectuer une sauvegarde ou transférer les données vers un autre système.

### .env

Le fichier `.env` contient les variables d'environnement nécessaires pour configurer les conteneurs Docker (tels que les informations de connexion à la base de données).

### backup_bdd.sql

Ce fichier est une sauvegarde d'une base de données **Dolibarr**. Vous pouvez l'utiliser pour importer des données dans votre installation.

## 5. Installation et Test

### Étape 1 : Cloner le projet

Commencez par cloner le projet dans un répertoire local. Vous pouvez utiliser la commande suivante :

```bash
git clone https://lien_vers_votre_projet.git
cd Projet
Étape 2 : Lancer les services avec Docker Compose
Dans le répertoire du projet, exécutez la commande suivante pour démarrer les conteneurs Docker définis dans docker-compose.yml :

bash
Copier le code
docker-compose up -d
Cela va télécharger les images nécessaires (MariaDB et Dolibarr) et lancer les services en arrière-plan.

Étape 3 : Accéder à l'interface web de Dolibarr
Une fois les conteneurs lancés, vous pouvez accéder à l'interface web de Dolibarr en ouvrant votre navigateur et en naviguant vers :

arduino
Copier le code
http://localhost:80
Vous devrez vous connecter à Dolibarr. Les identifiants par défaut sont :

Utilisateur : admin
Mot de passe : admin
Étape 4 : Importation des données (si nécessaire)
Si vous avez une base de données Dolibarr à importer, vous pouvez utiliser le script import_bdd.sh. Assurez-vous que le fichier de sauvegarde backup_bdd.sql est présent dans le répertoire du projet, puis exécutez la commande suivante :

bash
Copier le code
./import_bdd.sh
Cela importera la base de données dans votre conteneur MariaDB.

Étape 5 : Exportation des données (si nécessaire)
Si vous souhaitez exporter les données de la base Dolibarr, vous pouvez utiliser le script export_bdd.sh. Exécutez la commande suivante :

bash
Copier le code
./export_bdd.sh
Cela créera un fichier backup_bdd.sql contenant toutes les données de votre installation Dolibarr.

6. Problèmes connus et axes d'amélioration
Problèmes rencontrés
Problème de connexion MariaDB/Dolibarr : Lors de la première installation, nous avons eu un problème de connexion entre le conteneur Dolibarr et la base de données MariaDB. Ce problème a été résolu en ajoutant un délai dans le script Docker pour attendre que MariaDB soit entièrement opérationnel avant que Dolibarr tente de se connecter.

Mise en place de la sauvegarde : La mise en place du système de sauvegarde des données n'a pas été totalement automatisée dans un premier temps, mais elle a été réalisée via un script d'exportation des données et un plan de backup manuel.

Axes d'amélioration
Automatisation complète de la sauvegarde : Il serait intéressant de mettre en place une solution de sauvegarde automatisée qui s'exécute à intervalle régulier.

Sécurisation de l'accès à l'interface web : Actuellement, l'interface web de Dolibarr est accessible sans authentification (en local), il serait pertinent d'ajouter une couche de sécurité avant de rendre cette application accessible en production.

Amélioration de l'import/export : Il serait utile d'optimiser le processus d'importation et d'exportation de données pour rendre la migration de bases de données plus fluide.

7. Conclusion
Ce projet a permis de mettre en place une solution Dolibarr entièrement fonctionnelle dans un environnement Docker. Il offre la possibilité de gérer un ERP/CRM à travers une interface web, tout en facilitant la sauvegarde et la migration des données via des scripts automatiques. Des axes d'amélioration existent pour automatiser davantage le processus et sécuriser l'environnement.

8. Ressources
Site officiel de Dolibarr
Documentation de Dolibarr
