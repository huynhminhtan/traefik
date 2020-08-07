## whoami

docker run \
    -l "traefik.http.routers.whoami.rule=Host(\`vpstest.localhost\`)" \
    -l "traefik.http.routers.whoami.tls=true" \
    -l "traefik.http.routers.whoami.tls.certresolver=le" \
    -l "traefik.port=80" \
    -l "traefik.enable=true" \
    -l "traefik.docker.network=web" \
    --net web \
    --name whoami \
    --restart always \
    -d \
    containous/whoami