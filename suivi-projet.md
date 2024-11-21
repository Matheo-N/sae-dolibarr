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
  - Constitution des équipes.
  - Recherche préliminaire sur Dolibarr et ses fonctionnalités.

### Jeudi 17/10
- **Durée** : ~2 heures 30
- **Activités** :
  - Documentation sur l'installation de Dolibarr.
  - Exploration des fonctionnalités de l'outil pour comprendre son adaptation aux besoins de l'entreprise.

### Jeudi 24/10
- **Durée** : ~2 heures
- **Activités** :
  - Comparaison des différentes images Docker disponibles pour Dolibarr.
  - Documentation des étapes nécessaires pour configurer un conteneur fonctionnel.

### Vendredi 25/10
- **Durée** : ~2 heures 30
- **Activités** :
  - Tests initiaux d'installation de Dolibarr dans un environnement Docker.
  - Vérification des dépendances (MariaDB et PHP) et des fichiers de configuration requis.

### Lundi 04/11
- **Durée** : ~2 heures 45
- **Activités** :
  - Résolution d’un problème de connexion entre Dolibarr et le SGBD MariaDB.
  - **Problème** : Le conteneur Dolibarr essayait de se connecter avant que MariaDB soit opérationnel.
  - **Solution** : Ajout d’un script de délai pour s’assurer que MariaDB soit prêt avant la connexion.
  - Tests de fonctionnement après correction.

### Mercredi 06/11
- **Durée** : ~2 heures
- **Activités** :
  - Planification des prochaines étapes en équipe.
  - Recherche approfondie sur les différentes méthodes d'installation de Dolibarr.
  - Discussion sur les avantages/inconvénients des images Docker comparées à l’installation manuelle via fichiers sources.

### Jeudi 07/11
- **Durée** : ~2 heures 30
- **Activités** :
  - Création initiale du script `create_docker.sh` pour automatiser l’installation de Dolibarr et MariaDB via Docker Compose.
  - Début de tests sur l’automatisation des conteneurs.

### Mercredi 13/11
- **Durée** : ~5 heures
- **Activités** :
  - Révision du script `create_docker.sh` et ajustements des variables d’environnement.
  - Mise en place d’une documentation sur les tests d’installation.
  - Tests approfondis de la connexion entre les services MariaDB et Dolibarr.

### Jeudi 14/11
- **Durée** : ~1 heure 15
- **Activités** :
  - Premiers tests d’importation/exportation des données via MariaDB (dump SQL).
  - Création du script `export.sh` pour exporter facilement les données de la base.

### Lundi 18/11
- **Durée** : ~2 heures 30
- **Activités** :
  - Ajout d’un script `import.sh` pour automatiser la restauration des données SQL.
  - Tests d’import/export avec différents jeux de données.
  - Débogage d’un problème lié aux permissions lors de l’importation.

### Jeudi 21/11
- **Durée** : ~5 heures
- **Activités** :
  - Finalisation des scripts `export.sh` et `import.sh` pour une gestion plus fluide des bases de données.
  - Réorganisation du dépôt Git : création des dossiers `data`, `docs`, `sources`, et `tests` pour structurer le projet.
  - Ajout de commentaires détaillés dans les scripts pour faciliter la maintenance et la compréhension.
  - Mise à jour de la documentation finale (`suivi-projet.md`).

## 4. Description du projet
L'objectif est de migrer d'une solution ERP/CRM externalisée vers une solution hébergée en interne, utilisant Dolibarr. Nous devons nous assurer que l'installation est automatisée et que l'importation des données est efficace.

### Cahier des charges
1. Automatisation de l'installation via un script `create_docker.sh`.
2. Automatisation de l'importation et de l'exportation des données via les scripts `import.sh` et `export.sh`.
3. Utilisation de Docker pour simplifier l’installation et la gestion des services.
4. Structuration du dépôt Git pour une meilleure gestion des fichiers et scripts.

## 5. Prochaines étapes
1. **Test en environnement réel** :
   - Simuler une installation complète sur un serveur externe pour vérifier la portabilité des scripts.
   - Documenter les éventuels problèmes et ajustements nécessaires.

2. **Validation des scripts d’import/export** :
   - Tester avec des bases de données plus volumineuses et des scénarios réels.
   - Vérifier la compatibilité avec différents formats CSV.

3. **Rédaction finale** :
   - Préparer une documentation complète pour les utilisateurs.
   - Détailler les étapes d’installation et les solutions aux problèmes fréquents.

4. **Démonstration finale** :
   - Préparer une présentation pour montrer le déploiement automatisé et les fonctionnalités principales de Dolibarr.
   - Tester la fiabilité du projet en conditions simulées.

## 6. Ressources
Pour plus d'informations sur Dolibarr, vous pouvez consulter les liens suivants :
- [Site officiel de Dolibarr](https://www.dolibarr.org/)
- [Documentation de Dolibarr](https://wiki.dolibarr.org/)
