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
- **Durée** : ~5 heures
- **Activités** :
  - Constitution des équipes et prise en main des consignes de la SAE.
  - Découverte de Dolibarr : recherche sur ses fonctionnalités et ses principales utilisations en entreprise.
  - Discussion en équipe sur la faisabilité du projet et les outils à utiliser (Docker, scripts).

### Jeudi 17/10
- **Durée** : ~2 heures 30
- **Activités** :
  - Étude des prérequis pour l'installation de Dolibarr (MariaDB, PHP, dépendances).
  - Préparation d’un environnement Docker pour réaliser les premiers tests.
  - Documentation initiale sur les étapes d'installation.

### Jeudi 24/10
- **Durée** : ~2 heures
- **Activités** :
  - Recherche sur les images Docker officielles et communautaires pour Dolibarr.
  - Comparaison des images disponibles en termes de fiabilité et de configuration.
  - Documentation des étapes pour configurer un conteneur fonctionnel avec MariaDB.

### Vendredi 25/10
- **Durée** : ~2 heures 30
- **Activités** :
  - Installation initiale de Dolibarr dans un conteneur Docker.
  - Résolution de premiers problèmes liés aux versions de PHP incompatibles avec l'image utilisée.
  - Vérification de la connectivité entre le conteneur Dolibarr et MariaDB.

### Lundi 04/11
- **Durée** : ~2 heures 45
- **Activités** :
  - Résolution d’un problème de connexion entre Dolibarr et le SGBD MariaDB.
  - **Problème rencontré** : MariaDB n'était pas opérationnel au moment où Dolibarr tentait de se connecter.
  - **Solution** : Ajout d’un script de délai pour synchroniser les conteneurs.
  - Tests approfondis sur l'installation pour valider la stabilité du système.

### Mercredi 06/11
- **Durée** : ~2 heures
- **Activités** :
  - Planification des tâches pour la suite du projet et répartition des rôles.
  - Étude des différentes méthodes d'installation alternatives de Dolibarr (source PHP, archive, paquets Debian).
  - Rédaction d'une première structure de documentation des méthodes.

### Jeudi 07/11
- **Durée** : ~2 heures 30
- **Activités** :
  - Développement initial du script `create_docker.sh` pour automatiser l’installation de Dolibarr et MariaDB avec Docker Compose.
  - Tests préliminaires pour vérifier que les conteneurs se lancent correctement.
  - Identification des variables critiques à intégrer (mots de passe, ports, etc.).

### Mercredi 13/11
- **Durée** : ~5 heures
- **Activités** :
  - Révision et amélioration du script `create_docker.sh` : ajout de commentaires et simplification du fichier Docker Compose.
  - Documentation des étapes d'installation automatisée pour assurer la reproductibilité.
  - Tests approfondis sur l’intégration entre Dolibarr et MariaDB avec des configurations de test.

### Jeudi 14/11
- **Durée** : ~1 heure 15
- **Activités** :
  - Développement du script `export.sh` pour permettre l'exportation des bases de données en fichiers SQL.
  - Test initial d’exportation des données avec des bases vides et basiques.
  - Résolution d’un problème de permissions d’écriture pour l'export dans Docker.

### Lundi 18/11
- **Durée** : ~2 heures 30
- **Activités** :
  - Création du script `import.sh` pour automatiser l’importation des fichiers SQL dans MariaDB.
  - Tests d’import/export avec des données simulées et validation des résultats dans Dolibarr.
  - Résolution d'un problème lié au format des fichiers SQL générés par l’exportation.

### Jeudi 21/11
- **Durée** : ~5 heures
- **Activités** :
  - Finalisation des scripts `export.sh` et `import.sh` pour garantir leur fiabilité.
  - Réorganisation complète du dépôt Git : création des dossiers `data`, `docs`, `sources`, et `tests` pour une meilleure structuration.
  - Amélioration de la documentation interne (README.md et commentaires dans les scripts).
  - Présentation des résultats finaux en équipe pour vérifier que tout fonctionne comme prévu.

## 4. Description du projet
L'objectif est de migrer d'une solution ERP/CRM externalisée vers une solution hébergée en interne, utilisant Dolibarr. Nous avons travaillé à automatiser l'installation, la configuration et la gestion des données.

### Cahier des charges
1. Automatisation de l'installation via un script `create_docker.sh`.
2. Automatisation de l'importation et de l'exportation des données via les scripts `import.sh` et `export.sh`.
3. Utilisation de Docker pour simplifier l’installation et la gestion des services.
4. Structuration du dépôt Git pour une gestion claire des fichiers et scripts.

## 5. Axes d'amélioration futurs
1. **Optimisation des scripts** :
   - Simplifier davantage les scripts pour qu’ils soient utilisables par des non-spécialistes.
   - Ajouter des options pour prendre en charge plusieurs environnements (test, production).

2. **Tests à grande échelle** :
   - Tester les scripts avec des bases de données plus volumineuses pour évaluer leur performance.
   - Simuler des scénarios réalistes d'utilisation par une entreprise.

3. **Documentation utilisateur** :
   - Rédiger une documentation plus accessible aux utilisateurs finaux avec des captures d’écran et des exemples concrets.
   - Préparer une version en anglais pour une portée plus large.

4. **Ajout de fonctionnalités** :
   - Ajouter un script pour la sauvegarde et la restauration automatiques des données.
   - Étudier l'intégration de nouveaux modules dans Dolibarr pour répondre à des besoins spécifiques.

5. **Préparation pour une démonstration publique** :
   - Organiser une démonstration de l’installation automatisée et des fonctionnalités de Dolibarr.
   - Rendre le projet accessible à d’autres étudiants ou entreprises via une documentation simplifiée et un dépôt Git bien structuré.

## 6. Ressources
Pour plus d'informations sur Dolibarr, vous pouvez consulter les liens suivants :
- [Site officiel de Dolibarr](https://www.dolibarr.org/)
- [Documentation de Dolibarr](https://wiki.dolibarr.org/)
