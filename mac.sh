# Before getting started: install Xcode AND OPEN IT TO ACCEPT THE TERMS & CONDITIONS
xcode-select --install # click install on prompt

# Setup our profile
echo "source .profile" >> .bash_profile
touch .profile

# Initialize Hombrew 
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor
brew update

# Setup Cask
echo export HOMEBREW_CASK_OPTS=\"--appdir=/Applications\" >> .profile
source .profile 
brew tap phinze/cask
brew install brew-cask

# Install our apps
brew cask install sublime-text google-chrome alfred


# Set Spotlight to Control + Space, then Alfred to CMD + Space
# System Prefs > Keyboard > Shortcuts > Full Keyboard Access to "All Controls"


# Install some useful utilities 
brew install wget


mkdir -p dev/themes
wget https://raw.github.com/altercation/solarized/master/osx-terminal.app-colors-solarized/xterm-256color/Solarized%20Dark%20xterm-256color.terminal -O dev/themes/solarized-dark.terminal
open -a Terminal.app dev/themes/solarized-dark.terminal
## Setup UI according to http://net.tutsplus.com/tutorials/tools-and-tips/how-to-customize-your-command-prompt/


brew install zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
sed -ie 's/robbyrussell/dwelch/g' .zshrc
wget https://gist.github.com/dwelch2344/8589538/raw/399de9f833d3db25bf3509b3349dc093e1636735/dwelch.zsh-theme -O .oh-my-zsh/themes/dwelch.zsh-theme


# Update Ruby with rbenv
brew install rbenv ruby-build
echo "eval \"\$(rbenv init -)\"" >> .profile
source .profile
CONFIGURE_OPTS="--with-openssl-dir=`brew --prefix openssl` --without-tcl --without-tk" rbenv install 2.0.0-p195
rbenv global 2.0.0-p195


# Install the cocoapods!!!
sudo gem install cocoapods
pod setup
