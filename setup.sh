# Install Homebrew
echo "Checking for Homebrew..."
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install brew tools
brew install macvim --with-override-system-vim
brew install node
brew install mysql 
brew install mongodb
brew install git

# Install brew cask
brew install caskroom/cask/brew-cask
brew tap caskroom/versions
brew cask install iterm2-beta

# Install apps 
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" skype 
brew cask install --appdir="/Applications" gitter
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" firefox-nightly
brew cask install --appdir="/Applications" java
brew cask install --appdir="/Applications" whatsdesktop
brew cask install --appdir="/Applications" eclipse-ide

# npm
chown -R $USER /usr/local/
npm i babel-cli, electron-packager, electron-prebuilt, mocha, nodemon, react-native-cli -g
