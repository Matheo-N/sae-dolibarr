
# Deployment d’une instance Dolibarr avec Docker


Ce projet a pour objectif de déployer une instance fonctionnelle de l’ERP/CRM **Dolibarr** en utilisant des conteneurs Docker. Dolibarr est un logiciel open source utilisé pour la gestion des entreprises (comptabilité, facturation, gestion de stocks, etc.).

---

## ⚙️ Prérequis

Avant de commencer, assurez-vous d’avoir :
- **Git** installé sur votre machine.
- **Docker** et **Docker Compose** installés.
- Une connexion Internet pour télécharger les images Docker nécessaires.

---

## 📂 Arborescence du projet

```
.
├── install.sh           # Installation automatisé
├── data/                # Répertoire pour les données
├── docs/                # Répertoire pour les documentations
├── sources/             # Répertoire pour les liens des sources consulté
├── tests/               # Répertoire pour l'environnement test (fichiers test)
├── suivi-projet.md      # Fichier suivis du projet (journal de bord)
└── README.md            # Fichier markdown qui décris l'utilisation de chaque fichier pour bien éxécuter le projet
```

---

## 🚀 Installation et test

### 1️⃣ Cloner le dépôt Git

```bash
git clone git@github.com:Matheo-N/sae-dolibarr.git
cd dolibarr-docker
```

### 2️⃣ Lancer les conteneurs Docker

Lancer Docker Compose pour démarrer les conteneurs nécessaires (Dolibarr + MySQL) :

```bash
docker-compose up -d
```

### 3️⃣ Accéder à Dolibarr via un navigateur

1. Ouvrir le navigateur.
2. Accéder à l’URL suivante : [http://localhost:8080](http://localhost:8080).
3. Suivre les instructions pour configurer Dolibarr (choisisir la base de données MySQL déjà configurée dans `docker-compose.yml`).

### 4️⃣ Importer/Exporter une base de données via Docker

#### 🚀  Importer une base de données
-> Utiliser le fichier import.sh :

```bash
docker exec -i sae-dolibarr_mariadb_1 /usr/bin/mariadb --user "$BDD_LOGIN" --password="$BDD_PWD" "$NOM_BDD" < "$FICHIER_BDD"
```

#### 🚀  Exporter une base de données
-> Utiliser le fichier export.sh : 

```bash
docker exec -i sae-dolibarr_mariadb_1 /usr/bin/mariadb-dump --user root --password=root dolibarr > backup_bdd.sql
```

### 5️⃣ Arrêter les conteneurs

Pour arrêter les conteneurs, utiliser :

```bash
docker-compose down
```

---
## 🚀 Utilisation du fichier install.sh

Sinon il y a directement le fichier **install.sh** qui permet comme demandé de faire toutes ces taches de facon **automatique** :
1. Dans un premier temp il lance le docker compose
2. Ensuite, il attend le lancement de mariadb pour éviter des possibles conflits
3. Et pour finir, il importe les données de la base vers dolibarr
   
---

## 🛠️ Problèmes connus

1. **Problème de permissions** : Certaines versions de Docker sous Windows peuvent générer des erreurs liées aux permissions des fichiers dans les volumes partagés.
   - **Solution** : Modifier les permissions avec `chmod` ou utiliser un utilisateur spécifique dans le conteneur.

2. **Accès à MySQL** : Des erreurs d’accès à la base de données peuvent survenir si les identifiants ne sont pas correctement configurés.
   - **Solution** : Vérifier et synchroniser les paramètres dans `docker-compose.yml` et l’interface de configuration de Dolibarr.

---

## 💡 Suggestions d’améliorations futures

1. Automatiser les sauvegardes de la base de données.
2. Générer une base de donnée avec des profils utilisateurs type

---

## 📚 Ressources utiles

- [Documentation officielle de Dolibarr](https://www.dolibarr.org/)
- [Documentation Docker](https://docs.docker.com/)
- [Tutoriels Docker Compose](https://docs.docker.com/compose/gettingstarted/)
- [Forum Dolibarr (Communauté)](https://www.dolibarr.org/forum/)

---

## ✨ Contributions

Les contributions sont les bienvenues ! Si vous souhaitez améliorer ce projet, ouvrez une issue ou soumettez une pull request.

---

```
