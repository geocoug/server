# Directory inside the container where the backups are stored
BACKUP_DIR="/backups/2025/March"

# List of all databases to restore from the backup directory
declare -a arr=("PG_mydb.07-March-2025.dmp" "PG_gis.07-March-2025.dmp")

# Loop through the list of databases and restore them
for i in "${arr[@]}"
do
    DB_NAME=$(sed -E 's/^PG_(.*)\.[0-9]{2}-[A-Za-z]+-[0-9]{4}\.dmp/\1/' <<< $i)
    FIXED_COLUMN=52
    SPACING=$((FIXED_COLUMN - ${#i}))
    DOTS=$(printf ".%.0s" $(seq 1 $SPACING))
    printf "Restoring %s %s %s\n" "$i" "$DOTS" "$DB_NAME"

    docker compose exec \
        -e TARGET_ARCHIVE=$BACKUP_DIR/$i \
        -e TARGET_DB=$DB_NAME \
        -e WITH_POSTGIS=TRUE \
        pg_backup ./restore.sh
done
