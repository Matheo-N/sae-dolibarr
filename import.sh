NOM_BDD="dolibarr"
BDD_LOGIN="root"
BDD_PWD="root"
FICHIER_BDD="backup_bdd.sql"

docker exec -i sae-dolibarr_mariadb_1 /usr/bin/mariadb --user "$BDD_LOGIN" --password="$BDD_PWD" "$NOM_BDD" < "$FICHIER_BDD"

echo "Données importées"
