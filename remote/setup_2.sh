pip install pip==22.3

echo "Logging into Gitlab..."
docker login registry.gitlab.com

echo "Pulling docker image..."
time docker pull registry.gitlab.com/mldocker/ml

echo "Setting up wandb"
pip install wandb
wandb login
