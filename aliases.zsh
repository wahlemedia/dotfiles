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
alias sa="sail php artisan"
alias ams="php artisan migrate:fresh --seed"
alias sail='bash vendor/bin/sail'

# PHP
alias cfresh="rm -rf vender/ composer.lock && composer i"

# JS
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"

# GIT
alias wip='git add . && git commit -m '\''wip'\'
alias nah='git reset --hard HEAD'
