source ~/.git-prompt.sh

# Terminal's prompt
export PS1="\[\e[0;32m\] \W\[\e[0;33m\] \$(parse_git_branch)\[\e[0m\]"

# Colorful ls 
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Colorful grep
export GREP_OPTIONS='--color=auto'
export EDITOR=vim

# Paths
export PATH=$PATH:~/bin

# Aliases
alias rm='trash'
alias gc='git clone'
alias bode='babel-node'
alias ni='npm install'
alias nis='npm install -S'
alias nid='npm install -D'
alias nu='npm update'
alias ns='npm start'
alias nr='npm run'
alias nb='npm run build'

pmcd () { cd `pmc $1`; }
fim () { vim $(fzf); }
update () {
  echo "⚡️ 🔥 💥  Updating brew";
  brew update;
  echo "⚡️ 🔥 💥  Upgrading brew"
  brew upgrade;
  echo "⚡️ 🔥 💥  Upgrading b-cask"
  brew cask update;
  echo "⚡️ 🔥 💥  Clean up"
  brew cleanup; brew cask cleanup;
  echo "⚡️ 🔥 💥  NPM modules"
  npm update -g;
}

# GIT
gpush () { git add .; git commit -m "$1"; git push $2 $3; }
gp () { git pull origin master; }
greset () { git reset --hard HEAD~$1; }
gcreate () { curl -u $1 https://api.github.com/user/repos -d "{\"name\": \"$2\", \"description\": \"$3\"}"; }
glog () { git log --all --graph --decorate --oneline --simplify-by-decoration; }

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
