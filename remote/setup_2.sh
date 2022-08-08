echo "Logging into Gitlab..."
docker login registry.gitlab.com

echo "Pulling docker image..."
time docker pull registry.gitlab.com/mldocker/ml
