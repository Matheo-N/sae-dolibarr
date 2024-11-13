NOM_BDD="dolibarr"
BDD_LOGIN="root"
BDD_PWD="root"
FICHIER_BDD=backup_bdd.sql

if [! -f "$FICHIER_BDD"]
then 	echo"Fichier '$FICHIER_BDD' inexistant
		exit 1
fi

mysql -u "$BDD_LOGIN" -p "$BDD_PWD" "$NOM_BDD" < "$FICHIER_BDD"

echo "Données importées"
