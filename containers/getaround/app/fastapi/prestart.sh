# prestart.sh

echo "Waiting for postgres connection"

while ! nc -z postgresdb 5432; do
    sleep 0.1
done

echo "PostgreSQL started"

exec "$@"
