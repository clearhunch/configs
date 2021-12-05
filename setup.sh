test_path () {
  which $1 > /dev/null
}
xcode-select --install

test_path brew
if [[ $? -ne 0 ]]
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew install --cask visual-studio-code
brew install --cask docker
brew install nvm
