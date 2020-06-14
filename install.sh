#!/bin/sh

echo "Setting up..."

# Thanks to Dries Vints https://github.com/driesvints/dotfiles

# Check for Homebrew and install it 

if test ! $(which brew); then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update Homebrew
brew update

# Install all dependencies
brew tap homebrew/bundle
brew bundle

# Set default MySQL root password and auth type.
# mysql -u root -e "ALTER USER root@localhost IDENTIFIED WITH mysql_native_password BY 'password'; FLUSH PRIVILEGES;"

# Secure myslq insallation 
mysql_secure_installation

# Install PHP extensions with PECL
pecl install memcached

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer  laravel/valet

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Create a Code directory
mkdir $HOME/Code

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# set zshell permissions
chmod 755 /usr/local/share/zsh
chmod 755 /usr/local/share/zsh/site-functions

# Install Spashship Promit
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"


# Install powerline Fonts
# https://github.com/powerline/fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Add global git Ignore 
git config --global core.excludesFile ~/.dotfiles/.gitignore_global

# Set hushloigin
ln -s $HOME/.dotfiles/.hushlogin $HOME/.hushlogin

# Symlink the Mackup config file to the home directory
# ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

