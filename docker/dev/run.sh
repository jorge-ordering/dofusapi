#!/usr/bin/with-contenv sh
set -e;

set VIRTUAL_ENV=/var/www/api/venv
set PATH="$VIRTUAL_ENV/bin:$PATH"

mkdir -p /var/www/api/venv
cp -R /var/www/venv /var/www/api/

ls .

uvicorn app.main:app --host 0.0.0.0 --port 80  --reload --reload-dir ./app/
