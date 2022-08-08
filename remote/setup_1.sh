echo "Updating docker permissions"
sudo usermod -a -G docker ubuntu

echo "Setting up config files"
cat ~/myfs/code/dotfiles/remote/bashrc >> ~/.bashrc
cp ~/myfs/code/dotfiles/remote/gitconfig ~/.gitconfig
