# Start Traefik
docker-compose -f traefik-docker-compose.yml up -d

# Start service
docker-compose -f whoami-docker-compose.yml up -d

# Utils
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)