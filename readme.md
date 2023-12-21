# Tagging the image
# docker image tag <image>:<tag> <repository-name>/image:tag
docker build -t neetomi/neetome-db:1.9 .

# Tagging image
# docker image tag neetomi-exam-mgmt-service:1.0 neetomi/neetomi-exam-mgmt-service:1.0


# Push image to private docker hub
# docker push <repository-name>/<tag>
docker push  neetomi/neetome-db:1.9

# docker compose
docker compose up