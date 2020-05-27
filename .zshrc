ZSH_DISABLE_COMPFIX=true

export ZSH="/Users/divjot.singh/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Plugins
plugins=(git)
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Aliases
alias rm='trash' # I use trash-cli to prevent accidental `rm`s
alias gr='git rebase'
alias ga='git add'
alias gp='git pull'
alias gc='git commit'
alias ni='npm install'
alias nis='npm install -S'
alias nig='npm install -g'
alias nid='npm install -D'
alias nu='npm update'
alias ns='npm start'
alias nr='npm run'
alias nd='npm run dev'
alias nb='npm run build'
alias nt='npm test'

# Udaan specific
alias vpn='sudo openvpn --config ~/Work/udaan-vpn-client/client.conf'
alias kprod='kubectl -n prod --context=sin0'

# react-native android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# OpenVPN
export PATH=$(brew --prefix openvpn)/sbin:$PATH
