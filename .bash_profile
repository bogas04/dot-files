# Terminal's prompt
export PS1="\[\e[2;34m\]\w \033[38;5;5m\D{%r}\n\[\e[0;31m\]>\[\e[0;32m\]"
# Colorful ls 
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
# Colorful grep
export GREP_OPTIONS='--color=auto'
# Paths
export PATH=$PATH:~/bin
export PATH=$PATH:/usr/local/mongodb/bin
export PATH=$PATH:/usr/local/bin/composer

export EDITOR=vim

# Copy pwd to clipboard
alias cwd='pwd | pbcopy'

# Clear and list 
cls () { clear; ls $1; }
# Git push
gpush () { git add .; git commit -m "$1"; git push $2 $3; }
# pmc
pmcd () { cd `pmc $1`; }
pmcs () { cd `pmc $1`; `pmc start $1`; }

# The next line updates PATH for the Google Cloud SDK.
source '/Users/divjotsingh/Work/Code/HTML5/.google-cloud-sdk/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/divjotsingh/Work/Code/HTML5/.google-cloud-sdk/google-cloud-sdk/completion.bash.inc'
