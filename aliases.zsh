# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadcli="source $HOME/.zshrc"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"

# Directories
alias dotfiles="cd $DOTFILES"
#alias code="cd $HOME/code"

# Laravel
alias a="php artisan"
alias saa="sail php artisan"
alias ams="php artisan migrate:fresh --seed"
alias sail='bash vendor/bin/sail'

# PHP
alias cfresh="rm -rf vender/ composer.lock && composer i"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"

# GIT
alias init='git init && git add . && git commit -m "initial commit"'
alias wip='git add . && git commit -m '\''wip'\'
alias nah='git reset --hard HEAD'


# Helper Funktions 
# Credits Philo Hermans 
# https://twitter.com/Philo01/status/1444295779506601986/photo/1
function db() { open mysql://127.0.0.1/$1 }
