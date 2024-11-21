
# Deployment d’une instance Dolibarr avec Docker

```markdown
Ce projet étudiant a pour objectif de déployer une instance fonctionnelle de l’ERP/CRM **Dolibarr** en utilisant des conteneurs Docker. Dolibarr est un logiciel open source utilisé pour la gestion des entreprises (comptabilité, facturation, gestion de stocks, etc.).

---

## ⚙️ Prérequis

Avant de commencer, assurez-vous d’avoir :
- **Git** installé sur votre machine.
- **Docker** et **Docker Compose** installés.
- Une connexion Internet pour télécharger les images Docker nécessaires.

---

## 📂 Arborescence du projet

```plaintext
.
├── docker-compose.yml   # Configuration Docker Compose
├── dolibarr_data/       # Répertoire pour les données persistantes de Dolibarr
├── db_data/             # Répertoire pour les données de la base MySQL
└── README.md            # Ce fichier
```

---

## 🚀 Installation et test

### 1️⃣ Cloner le dépôt Git

```bash
git clone https://github.com/username/dolibarr-docker.git
cd dolibarr-docker
```

### 2️⃣ Lancer les conteneurs Docker

Lancez Docker Compose pour démarrer les conteneurs nécessaires (Dolibarr + MySQL) :

```bash
docker-compose up -d
```

### 3️⃣ Accéder à Dolibarr via un navigateur

1. Ouvrez votre navigateur.
2. Accédez à l’URL suivante : [http://localhost:8080](http://localhost:8080).
3. Suivez les instructions pour configurer Dolibarr (choisissez la base de données MySQL déjà configurée dans `docker-compose.yml`).

### 4️⃣ Importer/Exporter une base de données via Docker

#### Importer une base de données
Placez le fichier `.sql` à importer dans le répertoire courant, puis exécutez :

```bash
docker exec -i <container_mysql_id> mysql -u root -p dolibarr < fichier.sql
```

#### Exporter une base de données
Créez un export de la base existante :

```bash
docker exec <container_mysql_id> mysqldump -u root -p dolibarr > export.sql
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
2. Intégrer un certificat SSL pour sécuriser les connexions.
3. Déployer une version multi-utilisateurs sur un serveur distant pour tester en conditions réelles.
4. Automatiser les sauvegardes de la base de données.

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

## 📄 Licence

Ce projet est sous licence MIT. Consultez le fichier `LICENSE` pour plus de détails.
```
