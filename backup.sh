mkdir /opt/backup

docker run \
    --rm \
    --entrypoint "" \
    -v /opt/backup:/backup \
    --network=backend \
    schnitzler/mysqldump \
    mysqldump \
    --opt \
    -h db \
    -u root \
    -p"YtReWq4321" \
    "--result-file=/backup/dumps.sql" \
    virtd
