
# Projet SAE51 - Installation d'un ERP/CRM avec Dolibarr

## Introduction
Ce projet a pour objectif l’installation et la configuration de **Dolibarr**, un ERP/CRM, en utilisant Docker pour simplifier le processus d'installation et de gestion de l'application. Ce README fournit toutes les étapes nécessaires pour configurer et tester le projet sur votre propre machine.

## Prérequis
Avant de commencer, assurez-vous d'avoir les éléments suivants installés sur votre machine :
- **Docker** : [Installation de Docker](https://docs.docker.com/get-docker/)
- **Docker Compose** : [Installation de Docker Compose](https://docs.docker.com/compose/install/)
- **Git** : [Installation de Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Structure des fichiers

Voici la structure des fichiers et des répertoires dans ce projet :

```
sae-dolibarr/
├── data/              # Contient les données persistantes de Dolibarr
├── docs/              # Documentation du projet
├── sources/           # Code source des scripts et fichiers nécessaires
│   ├── create_docker.sh    # Script pour créer les containers Docker
│   ├── export.sh          # Script pour exporter les données de Dolibarr
│   ├── import.sh          # Script pour importer les données dans Dolibarr
├── tests/             # Dossier pour les tests unitaires et d'intégration
├── README.md          # Ce fichier
```

## Étapes d'installation

### 1. Clonez le dépôt Git
La première étape est de cloner ce dépôt Git sur votre machine locale :

```bash
git clone https://github.com/Matheo-N/sae-dolibarr.git
cd sae-dolibarr
```

### 2. Créez les conteneurs Docker
Le script `create_docker.sh` vous permet de créer les conteneurs Docker pour **Dolibarr** et **MariaDB**.

- Ouvrez un terminal dans le dossier `sae-dolibarr`.
- Exécutez la commande suivante pour créer les conteneurs Docker :

```bash
bash sources/create_docker.sh
```

Ce script va télécharger les images Docker nécessaires, créer les conteneurs pour Dolibarr et MariaDB, puis démarrer les services.

### 3. Connexion à Dolibarr
Une fois que les conteneurs sont démarrés, vous pouvez accéder à Dolibarr via votre navigateur à l'adresse suivante :

```
http://localhost:8080
```

- **Nom d'utilisateur** : `admin`
- **Mot de passe** : `admin`

### 4. Importer les données
Si vous avez un fichier de données à importer dans Dolibarr, vous pouvez utiliser le script `import.sh`. Ce fichier vous permettra d’importer des fichiers SQL dans la base de données MariaDB associée à Dolibarr.

- Pour importer les données, exécutez la commande suivante dans le terminal (depuis le dossier `sae-dolibarr`) :

```bash
bash sources/import.sh
```

Le script va automatiser l'importation des fichiers SQL dans la base de données MariaDB.

### 5. Exporter les données
Si vous souhaitez exporter les données de Dolibarr pour les sauvegarder ou les transférer ailleurs, vous pouvez utiliser le script `export.sh`.

- Pour exporter les données, exécutez la commande suivante dans le terminal (depuis le dossier `sae-dolibarr`) :

```bash
bash sources/export.sh
```

Ce script génère un fichier SQL contenant les données actuelles de Dolibarr.

### 6. Arrêter et supprimer les conteneurs
Une fois que vous avez terminé avec Dolibarr, vous pouvez arrêter les conteneurs Docker avec la commande suivante :

```bash
docker-compose down
```

Cela arrête tous les services Docker et supprime les conteneurs. Si vous souhaitez nettoyer toutes les données persistantes, vous pouvez également supprimer le dossier `data/`.

## Fonctionnalités du projet
- **Automatisation de l'installation** : Le script `create_docker.sh` crée automatiquement l'environnement Docker avec Dolibarr et MariaDB.
- **Importation de données** : Le script `import.sh` permet d'importer des fichiers SQL dans la base de données.
- **Exportation de données** : Le script `export.sh` exporte les données de Dolibarr au format SQL.

## Tests
Une fois l’installation terminée et les services Docker en place, vous pouvez tester les fonctionnalités suivantes :
1. **Connexion à Dolibarr** : Vérifiez si vous pouvez vous connecter à Dolibarr via `http://localhost:8080` avec les identifiants `admin / admin`.
2. **Importation et exportation des données** : Testez les scripts d'import et d'export avec des fichiers SQL pour vérifier leur bon fonctionnement.

## Problèmes connus
- **Problème de connexion à MariaDB** : Si vous rencontrez un problème de connexion à la base de données, assurez-vous que le service MariaDB est bien démarré et que les variables d'environnement dans le fichier `create_docker.sh` sont correctes.
- **Problèmes de performance avec de grosses bases** : L’importation de très grandes bases de données peut prendre du temps. Il est recommandé d’utiliser des bases de taille modérée pour les tests.

## Conclusion
Ce projet permet de tester une installation de Dolibarr dans un environnement Docker automatisé. Les scripts d’importation et d’exportation de données simplifient le processus de gestion de l’application. Pour tout problème ou suggestion, n'hésitez pas à ouvrir une issue sur le dépôt Git.
