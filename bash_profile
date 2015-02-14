# Terminal's prompt
export PS1="\[\e[0;34m\]bogas04 \[\e[2;34m\][\w] \n\[\e[0;31m\]>\[\e[0;32m\]"

# Paths
export PATH=$PATH:~/bin
export PATH=$PATH:/usr/local/mongodb/bin
export PATH=$PATH:/usr/local/bin/composer

# Aliases to use brew's vim
alias vim='/usr/local/Cellar/vim/7.4.488/bin/vim'
alias vi='/usr/local/Cellar/vim/7.4.488/bin/vim'

######################
#  Custom Functions  # 
######################

# Clear and list 
cls () {
  clear; ls $1;
}
