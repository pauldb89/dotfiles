echo "Logging into Gitlab..."
docker login registry.gitlab.com

echo "Pulling docker image..."
docker pull registry.gitlab.com/mldocker/ml
