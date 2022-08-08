docker login registry.gitlab.com
sudo usermod -a -G docker ubuntu
cat bashrc >> ~/.bashrc
source ~/.bashrc
mlpull
