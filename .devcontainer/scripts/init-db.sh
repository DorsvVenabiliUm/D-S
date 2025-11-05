#!/usr/bin/env bash
set -euo pipefail

# Workspace/repo root (postStartCommand runs in the workspace folder)
REPO="$(pwd)"
SQL_FILE="$REPO/lab_data.sql"
MARKER_FILE="$REPO/.mysql_import_done"

# Wait for MySQL to be ready
echo "Waiting for MySQL at ${MYSQL_HOST:-mysql}:${MYSQL_PORT:-3306} ..."
for i in {1..60}; do
  if mysqladmin ping \
      -h "${MYSQL_HOST:-mysql}" \
      -P "${MYSQL_PORT:-3306}" \
      -u "${MYSQL_USER:-app}" \
      -p"${MYSQL_PASSWORD:-apppw}" --silent 2>/dev/null; then
    echo "MySQL is up."
    break
  fi
  sleep 2
done

# Import once if the file exists and hasn't been imported
if [[ -f "$SQL_FILE" && ! -f "$MARKER_FILE" ]]; then
  echo "Importing $SQL_FILE into ${MYSQL_DATABASE:-appdb} ..."
  mysql \
    -h "${MYSQL_HOST:-mysql}" \
    -P "${MYSQL_PORT:-3306}" \
    -u "${MYSQL_USER:-app}" \
    -p"${MYSQL_PASSWORD:-apppw}" \
    "${MYSQL_DATABASE:-appdb}" < "$SQL_FILE"
  touch "$MARKER_FILE"
  echo "Import complete. Marker written to $MARKER_FILE"
else
  echo "Skip import: file missing or already imported."
fi
