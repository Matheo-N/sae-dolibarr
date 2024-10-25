
# Projet SAE51 - Installation d’un ERP/CRM avec Dolibarr

## Sommaire
- [Introduction](#introduction)
- [Objectifs du Projet](#objectifs-du-projet)
- [Technologies Utilisées](#technologies-utilisées)
- [Installation de Dolibarr](#installation-de-dolibarr)
  - [Prérequis](#prérequis)
  - [Étapes d'installation](#étapes-dinstallation)
  - [Configuration initiale](#configuration-initiale)
- [Importation des Données](#importation-des-données)
- [Dockerisation](#dockerisation)
- [Sauvegarde et Restauration](#sauvegarde-et-restauration)
- [Suivi du Projet](#suivi-du-projet)
- [Auteurs](#auteurs)
- [Références](#références)
- [Prochaines Étapes](#prochaines-étapes)

## Introduction
Dans le cadre du projet SAE51 à l'IUT de Rouen, nous avons pour mission de migrer une solution ERP/CRM vers une installation interne de Dolibarr. Ce projet vise à automatiser l'installation et la configuration de Dolibarr, ainsi que l'importation des données clients et fournisseurs à partir de fichiers CSV. 

## Objectifs du Projet
1. Installer Dolibarr sur un serveur local.
2. Automatiser l'importation des données à partir de fichiers CSV.
3. Assurer la sauvegarde et la récupération des données.
4. Dockeriser l'ensemble de l'application pour une portabilité maximale.

## Technologies Utilisées
- **Dolibarr** : Progiciel de gestion intégré (ERP/CRM) écrit en PHP.
- **MariaDB/MySQL** : Système de gestion de base de données utilisé pour stocker les données.
- **Docker** : Outil de containerisation pour créer et gérer des conteneurs.
- **Bash** : Langage de script utilisé pour automatiser les processus d'installation et d'importation.
- **Debian** : Distribution Linux utilisée comme système d'exploitation pour le serveur.

## Installation de Dolibarr

### Prérequis
Avant de commencer l'installation, assurez-vous que les éléments suivants sont installés sur votre serveur :
- **Docker** : Pour gérer les conteneurs.
- **Docker Compose** : Pour orchestrer les conteneurs.
- **Un accès root** : Pour effectuer les installations nécessaires.

### Étapes d'installation
1. **Cloner le dépôt** :
   ```bash
   git clone git@github.com:Matheo-N/sae-dolibarr.git
   cd sae-dolibarr
   ```

2. **Exécuter le script d'installation** :
   ```bash
   chmod +x install.sh
   ./install.sh
   ```
   Ce script va :
   - Installer Dolibarr et les dépendances nécessaires.
   - Configurer la base de données MariaDB.

### Configuration initiale
Une fois l'installation terminée, vous devez configurer Dolibarr :
1. Ouvrir votre navigateur et accéder à `http://localhost/dolibarr/install`.
2. Suivre les instructions pour créer un compte administrateur et configurer les modules.

## Importation des Données
Pour importer les données des fichiers CSV :
1. Préparez vos fichiers CSV dans le dossier `data/`.
2. Utilisez le script d'importation :
   ```bash
   chmod +x import_csv.sh
   ./import_csv.sh
   ```
   Ce script va lire les fichiers CSV et insérer les données dans la base de données de Dolibarr.

## Dockerisation
Pour faciliter le déploiement et la gestion de l'application, nous avons utilisé Docker :
- Le fichier `Dockerfile` définit l'image de base pour Dolibarr.
- Les conteneurs sont créés pour Dolibarr et la base de données, permettant une isolation et une gestion simplifiées.

## Sauvegarde et Restauration
La sauvegarde des données est cruciale pour assurer la continuité de l'activité. Pour créer une sauvegarde :
1. Exécutez la commande suivante pour sauvegarder la base de données :
   ```bash
   docker exec <nom_du_conteneur> /usr/bin/mysqldump -u root --password=<votre_mot_de_passe> <nom_base_de_donnees> > backup.sql
   ```

Pour restaurer une sauvegarde :
1. Utilisez la commande suivante :
   ```bash
   docker exec -i <nom_du_conteneur> /usr/bin/mysql -u root --password=<votre_mot_de_passe> <nom_base_de_donnees> < backup.sql
   ```

## Suivi du Projet
Le fichier `suivi_projet.md` contient un journal de bord détaillant les activités de chaque séance, les difficultés rencontrées et les prochaines étapes. Ce suivi est essentiel pour la gestion du projet et permet de garder une trace de l'évolution du travail.

## Auteurs
- **Nom 1** : Rôle (par exemple, développement des scripts, configuration de Dolibarr).
- **Nom 2** : Rôle (par exemple, gestion du projet, documentation).

## Références
- [Documentation Dolibarr](https://www.dolibarr.org/)
- [Guide d'installation](https://all-it-network.com/installer-dolibar/)
- [GitHub de Dolibarr](https://github.com/Dolibarr/dolibarr/)
- [Wiki de Dolibarr](https://wiki.dolibarr.org/)

## Prochaines Étapes
1. Ajouter des fonctionnalités supplémentaires dans Dolibarr (par exemple, gestion des produits).
2. Améliorer la documentation et les tests.
3. Préparer une présentation du projet pour la soutenance.

---

**Note :** N'oubliez pas de mettre à jour ce fichier `README.md` à chaque ajout de nouvelles fonctionnalités ou de changements majeurs dans le projet. Cela permettra à tous les membres de l'équipe et aux enseignants de suivre l'évolution du projet.
