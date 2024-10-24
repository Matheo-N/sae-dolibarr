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
  - Recherche sur Dolibarr et ses fonctionnalités.
  - Première prise en main de l'installation manuelle sur une VM.

### Jeudi 17/10
- **Durée** : 3 heures
- **Activités** :
  - Installation de Dolibarr sur une machine Debian.
  - Configuration initiale (accès à la base de données, création de comptes).

### Jeudi 24/10
- **Durée** : 3 heures
- **Activités** :
  - Tests d'importation des données à partir de fichiers CSV.
  - Documentation des étapes d'installation et des tests effectués.

## 4. Description du projet
L'objectif est de migrer d'une solution ERP/CRM externalisée vers une solution hébergée en interne, utilisant Dolibarr. Nous devons nous assurer que l'installation est automatisée et que l'importation des données est efficace.

### Cahier des charges
1. Automatisation de l'installation via un script `install.sh`.
2. Automatisation de l'importation des données via un script `import_csv.sh`.
3. Utilisation de Docker pour faciliter l'installation et la gestion de l'application.
4. Mise en place d'un système de sauvegarde des données.

## 5. Prochaines étapes
- Finaliser l'automatisation de l'installation et de l'importation des données.
- Continuer la documentation des processus.
- Tester les fonctionnalités de Dolibarr pour s'assurer de leur bon fonctionnement.

## 6. Ressources
Pour plus d'informations sur Dolibarr, vous pouvez consulter les liens suivants :
- [Site officiel de Dolibarr](https://www.dolibarr.org/)
- [Documentation de Dolibarr](https://wiki.dolibarr.org/)
