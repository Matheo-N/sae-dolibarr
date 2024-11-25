
# Deployment d’une instance Dolibarr avec Docker


Ce projet étudiant a pour objectif de déployer une instance fonctionnelle de l’ERP/CRM **Dolibarr** en utilisant des conteneurs Docker. Dolibarr est un logiciel open source utilisé pour la gestion des entreprises (comptabilité, facturation, gestion de stocks, etc.).

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
├── create_docker.sh     # Installation automatisé
├── data/                # Répertoire pour les données
├── docs/                # Répertoire pour les documentations
├── sources/             # Répertoire pour les liens des sources consulté
├── tests/               # Répertoire pour l'environnement test (fichiers test)
├── suivi-projet.md      # Fichier suivis du projet (journal de bord)
└── README.md            # Ce fichier
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

1. Ouvrez le navigateur.
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

Pour arrêter les conteneurs, utilisez :

```bash
docker-compose down
```

---

## 🛠️ Problèmes connus

1. **Problème de permissions** : Certaines versions de Docker sous Windows peuvent générer des erreurs liées aux permissions des fichiers dans les volumes partagés.
   - **Solution** : Modifiez les permissions avec `chmod` ou utilisez un utilisateur spécifique dans le conteneur.

2. **Accès à MySQL** : Des erreurs d’accès à la base de données peuvent survenir si les identifiants ne sont pas correctement configurés.
   - **Solution** : Vérifiez et synchronisez les paramètres dans `docker-compose.yml` et l’interface de configuration de Dolibarr.

---

## 💡 Suggestions d’améliorations futures

1. Ajouter un script d’installation automatique pour simplifier le processus.
2. Automatiser les sauvegardes de la base de données.

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
