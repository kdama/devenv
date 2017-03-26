set -ex

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
curl -o - https://raw.githubusercontent.com/kdama/spaceship-zsh-theme/master/install.sh | zsh
cp /vagrant/.zshrc ~/.zshrc
sudo chsh -s $(which zsh) vagrant
