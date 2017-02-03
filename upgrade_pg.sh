# Usage: sh ./upgrade_pg.sh $version-to-upgrade-from

FROM_VERSION="${1:-9.5}"

pacman -S --needed postgresql-old-upgrade
chown postgres:postgres /data/postgres/
su - postgres -c "mv /data/postgres/data /data/postgres/data-${FROM_VERSION}"
su - postgres -c 'mkdir /data/postgres/data'
su - postgres -c "initdb --locale $LANG -E UTF8 -D /data/postgres/data"
su - postgres -c "pg_upgrade -b /opt/pgsql-${FROM_VERSION}/bin/ -B /usr/bin/ -d /data/postgres/data-${FROM_VERSION} -D /data/postgres/data"
