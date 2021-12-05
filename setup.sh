test_path () {
  which $1 > /dev/null
}
xcode-select --install
test_path brew
if [[ $? -ne 0 ]]
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew install zsh
brew install --cask visual-studio-code
brew install --cask docker
brew install nvm
brew install --cask hyper
brew install --cask dbeaver-community
brew install --cask firefox
brew install --cask dashlane
brew install --cask spotify
mv ./nvim ~/.config/nvim
mv .hyper.js ~/

