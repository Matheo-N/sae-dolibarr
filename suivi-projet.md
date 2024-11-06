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
  - Documentation des étapes de résolution.

### Mercredi 06/11
- **Durée** : 3 heures
- **Activités** :
  - Planification des prochaines étapes de travail en équipe et discussion des éléments du mail reçu.
  - **Travail réalisé** :
    - Création d'une liste des différentes méthodes d'installation possibles pour Dolibarr (images Docker, archive PHP, fichiers source, paquets Debian).
    - Discussion sur les versions disponibles et leurs différences.
    - Organisation d'une structure de documentation pour chaque méthode avec avantages/inconvénients et détails de procédure.
    - Préparation pour le choix d’une ou plusieurs méthodes à tester lors de la prochaine séance.

## 4. Description du projet
L'objectif est de migrer d'une solution ERP/CRM externalisée vers une solution hébergée en interne, utilisant Dolibarr. Nous devons nous assurer que l'installation est automatisée et que l'importation des données est efficace.

### Cahier des charges
1. Automatisation de l'installation via un script `install.sh`.
2. Automatisation de l'importation des données via un script `import_csv.sh`.
3. Utilisation de Docker pour faciliter l'installation et la gestion de l'application.
4. Mise en place d'un système de sauvegarde des données.

## 5. Prochaines étapes
1. **Étudier et tester les différentes possibilités d'installation** de Dolibarr :
   - Comparer les images Docker, les fichiers source PHP, l'archive et les paquets Debian.
   - Détailler chaque procédure avec ses avantages/inconvénients et documenter les étapes de test.
   - Rédiger un compte-rendu détaillé.

2. **Analyser le projet Dolibarr** :
   - Rechercher les origines, le développement, le rythme de release, la communauté et les sociétés fournissant du support.
   - Identifier les points forts/faibles et analyser les concurrents (projets libres et commerciaux similaires).
   - Rédiger un compte-rendu sur cette analyse.

3. **Exploration via l'IHM** :
   - Procédure d'installation, ajout de modules et test de leurs fonctionnalités.
   - Ajouter des données (ex. : entreprises, contacts) et explorer l'import/export via l'IHM.
   - Documenter les tests et observations.

4. **Manipulation de la BDD via CLI (MySQL)** :
   - Exporter le contenu sous forme de dump et en CSV "human-readable".
   - Modifier les fichiers CSV et tester la réimportation via l'IHM et le CLI.
   - Documenter les étapes et les résultats.

5. **Configuration et importation à partir de fichiers CSV** :
   - Rechercher la configuration générale, les utilisateurs, les modules dans la BDD.
   - Tester l'importation de la configuration en CSV.

6. **Analyse des tables de Dolibarr** :
   - Étudier les tables et leurs colonnes créées dans la BDD, puis rédiger un document de présentation.

7. **Adaptation de CSV externe** :
   - Étudier la manière d'adapter des CSV externes au format des tables de Dolibarr de façon manuelle et automatique.
   - Documenter les outils et étapes utilisés.

8. **Génération de données virtuelles** :
   - Explorer les possibilités de génération de données via IA, tester les prompts, évaluer les résultats.
   - Rédiger un compte-rendu sur les outils, prompts et résultats obtenus.

9. **Planification des backups** :
   - Mettre en place une solution de sauvegarde périodique des données vers une destination sécurisée.
   - Prévoir un plan de restauration et documenter la procédure.

10. **Live-demo via un script complet** :
    - Créer un script pour l'installation automatique et complète de Dolibarr avec configuration, modules, et données.
    - Tester et documenter les étapes.

## 6. Ressources
Pour plus d'informations sur Dolibarr, vous pouvez consulter les liens suivants :
- [Site officiel de Dolibarr](https://www.dolibarr.org/)
- [Documentation de Dolibarr](https://wiki.dolibarr.org/)
