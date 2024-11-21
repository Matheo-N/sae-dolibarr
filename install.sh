NOM_BDD="dolibarr"
BDD_LOGIN="root"
BDD_PWD="root"
FICHIER_BDD="backup_bdd_install.sql"


cat <<EOL > docker-compose.yml
version: '3'
services:
    mariadb:
        image: mariadb:latest
        environment:
            MYSQL_ROOT_PASSWORD: root
            MYSQL_DATABASE: dolibarr
    web:
        image: tuxgasy/dolibarr
        environment:
            DOLI_DB_HOST: mariadb
            DOLI_DB_USER: root
            DOLI_DB_PASSWORD: root
            DOLI_DB_NAME: dolibarr
            DOLI_URL_ROOT: 'http://0.0.0.0'
            PHP_INI_DATE_TIMEZONE: 'Europe/Paris'
        ports:
            - "80:80"
        links:
            - mariadb
EOL

# Lancement de Docker Compose
echo "Démarrage de l'application Dolibarr..."
docker-compose up -d

echo "En attente de l'initilisation de mariadb"
sleep 90

echo "Importation des paramètres de base..."
docker exec -i sae-dolibarr_mariadb_1 /usr/bin/mariadb --user "$BDD_LOGIN" --password="$BDD_PWD" "$NOM_BDD" < "$FICHIER_BDD"

