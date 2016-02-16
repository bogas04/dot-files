source ~/.git-prompt.sh
# Terminal's prompt
export PS1="\[\e[2;34m\]\w\e[0;33m\$(__git_ps1) \033[38;5;5m\D{%r}\n\[\e[0;31m\]>\[\e[0;32m\]"

# Colorful ls 
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Colorful grep
export GREP_OPTIONS='--color=auto'

export EDITOR=vim

# If you installed the SDK via Homebrew, otherwise ~/Library/Android/sdk
export ANDROID_HOME=/usr/local/opt/android-sdk

# Paths
export PATH=$PATH:~/bin
export PATH=$PATH:$HOME/.meteor

#Aliases
alias update='brew update && brew upgrade && brew cask update && brew cleanup && brew cask cleanup && npm update -g'
#alias vim='nvim'

# Clear and list 
cls () { clear; ls $1; }
# Git push
gpush () { git add .; git commit -m "$1"; git push $2 $3; }
# Git reset hard. Follow it with git push -f to have better history on github
greset () { git reset --hard HEAD~$1; }
# Git create 
gcreate () { curl -u $1 https://api.github.com/user/repos -d "{\"name\": \"$2\", \"description\": \"$3\"}"; }
# React component
rc () { 
  mkdir $1;
  touch "$1/index.js";
  echo "import React, { Component } from 'react';

  export default class $1 extends Component {
  constructor(props) {
  super(props);

}
render() {
  return (
  <div>
  </div>
  );
}
}" >> "$1/index.js";
}
# React Stateless component
rsc () { 
  mkdir $1;
  touch "$1/index.js";

  echo "import React from 'react';

  export default ({  }) => {
  return (
  <div>
  </div>
  );
};" >> "$1/index.js";
}

# pmc
pmcd () { cd `pmc $1`; }
