# Shortcuts
alias copyssh='pbcopy < $HOME/.ssh/id_rsa.pub'
alias reloadcli='source $HOME/.zshrc'
alias reloaddns='dscacheutil -flushcache && sudo killall -HUP mDNSResponder'
alias shrug='echo "¯\_(ツ)_/¯" | pbcopy'
alias c='clear'

# Directories
alias dotfiles='cd $DOTFILES'
#alias code='cd $HOME/code'

# Laravel
alias a='php artisan'
alias fresh='php artisan migrate:fresh --seed'
alias sail='bash vendor/bin/sail'
alias sa='sail php artisan'
alias sfresh='sail php artisan migrate:fresh --seed'

# PHP
alias cfresh='rm -rf vender/ composer.lock && composer i'
# alias composer='php -d memory_limit=-1 /opt/homebrew/bin/composer'

# JS
alias nfresh='rm -rf node_modules/ package-lock.json && npm install'
alias watch='npm run watch'

# Docker
alias docker-up='docker-compose up -d'

# GIT
alias init='git init && git add . && git commit -m 'initial commit''
alias gst='git status'
alias gb='git branch'
alias gc='git checkout'
alias gl='git log --oneline --decorate --color'
alias amend='git add . && git commit --amend --no-edit'
alias commit='git add . && git commit -m'
alias diff='git diff'
alias force='git push --force'
alias diff='git diff'
alias wip='git add . && git commit -m '\''wip'\'
alias nah='git reset --hard HEAD'
alias nuke='git clean -df && nah'
alias pop='git stash pop'
alias pull='git pull'
alias push='git push'
alias resolve='git add . && git commit --no-edit'
alias stash='git stash -u'
alias unstage='git restore --staged .'



# Helper Funktions 
# Credits Philo Hermans 
# https://twitter.com/Philo01/status/1444295779506601986/photo/1
function db() { open mysql://127.0.0.1/$1 }
