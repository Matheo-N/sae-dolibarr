# Projet SAE51 - Installation d'un ERP/CRM

## IUT Rouen - Réseaux & Télécoms - BUT3
### Date de début : 15 octobre 2024

## 1. Introduction
Ce projet vise à étudier l'installation et la configuration d'un outil de gestion, un ERP/CRM, pour une entreprise. Nous avons choisi d'implémenter **Dolibarr** comme solution.

## 2. Équipe
- **Chef de projet** : Mathéo Nouvel
- **Membres** : Robin Morel, Mathéo Nouvel

## 3. Journal de bord

### Mercredi 16/10
- **Durée** : 6 heures
- **Activités** :
  - Constitution des équipes.
  - Recherche préliminaire sur Dolibarr et ses fonctionnalités.

### Jeudi 17/10
- **Durée** : 3 heures
- **Activités** :
  - Documentation sur l'installation de Dolibarr.
  - Exploration des différentes fonctionnalités et des besoins de l'entreprise.

### Jeudi 24/10
- **Durée** : 3 heures
- **Activités** :
  - Comparaison des deux images de Dolibarr existantes (vue en cours lors de la présentation du projet).
  - Poursuite de la documentation des étapes d'installation et des tests effectués.

### Vendredi 25/10
- **Durée** : 3 heures
- **Activités** :
  - Début des tests d'installation de Dolibarr dans un conteneur Docker.
  - Vérification des dépendances et des configurations de base requises pour le conteneur.
  - Documentation de l’avancement et des éléments nécessaires pour la suite.

### Lundi 04/11
- **Durée** : 3 heures
- **Activités** :
  - Résolution d'un problème de connexion entre Dolibarr et le SGBD MariaDB dans Docker.
  - **Problème rencontré** : Lors de l'installation, une erreur de connexion empêchait Dolibarr d'accéder au SGBD. Nous avons découvert que le conteneur Dolibarr n'attendait pas que le conteneur MariaDB soit complètement opérationnel avant d'établir la connexion.
  - **Solution** : Mise en place d'un script de délai pour s'assurer que MariaDB soit pleinement lancé avant que Dolibarr tente de se connecter. Cela a permis de finaliser l'installation et de passer à la configuration initiale.

## 4. Description du projet
L'objectif est de migrer d'une solution ERP/CRM externalisée vers une solution hébergée en interne, utilisant Dolibarr. Nous devons nous assurer que l'installation est automatisée et que l'importation des données est efficace.

### Cahier des charges
1. Automatisation de l'installation via un script `install.sh`.
2. Automatisation de l'importation des données via un script `import_csv.sh`.
3. Utilisation de Docker pour faciliter l'installation et la gestion de l'application.
4. Mise en place d'un système de sauvegarde des données.

## 5. Prochaines étapes
- Finaliser l'automatisation de l'installation et de l'importation des données.
- Poursuivre la documentation des processus.
- Tester les fonctionnalités de Dolibarr pour s'assurer de leur bon fonctionnement.

## 6. Ressources
Pour plus d'informations sur Dolibarr, vous pouvez consulter les liens suivants :
- [Site officiel de Dolibarr](https://www.dolibarr.org/)
- [Documentation de Dolibarr](https://wiki.dolibarr.org/)
