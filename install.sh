#!/bin/bash
 
echo "Install all the things..."
 
echo "Update Xcode and Command Line Tools"
sudo rm -rf /Library/Developer/CommandLineTools
xcode-select --install
 
echo "Install oh my zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh
 
echo "Install Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/edwinbos/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
 
echo "Install stuff"
brew install composer
brew install node
npm install -g npm@latest
brew install yarn
brew install nvm
# brew install Schniz/tap/fnm  
 
echo "Install applications"
brew install --cask google-chrome
brew install --cask sequel-ace
brew install  --cask iterm2
brew install --cask jetbrains-toolbox
brew install --cask phpstorm
brew install --cask sourcetree
brew install --cask slack
brew install --cask 1password
brew install fig
brew install --cask visual-studio-code
brew install --cask numi
brew install --cask cron
brew install --cask sketch
brew install --cask figma
brew install --cask rectangle
brew install --cask firefox
brew install --cask clipy
brew install --cask notion
brew install --cask openinterminal
 
brew tap nicoverbruggen/homebrew-cask
brew install --cask phpmon
 
  echo "Install browser nightly versions"
# brew install --cask homebrew/cask-versions/google-chrome-canary
# brew install --cask homebrew/cask-versions/firefox-nightly
 
echo "Install music stuff"
brew install --cask spotify
brew install --cask notunes
brew install --cask beardedspice
brew install --cask bluesnooze
 
echo "Install dev tools"
npm install gulp-cli -g
brew install webp
 
echo "Magento stuff"
composer global require mage2tv/magento-cache-clean