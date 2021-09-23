export PS1='\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export EDITOR='vim'

#setxkbmap -option ctrl:nocaps

#w3m for ranger
export PATH="$PATH":"/usr/lib/w3m/"

#alias
alias ls='ls --color'
alias ll='ls -alF'
alias la='ls -A'
alias grep='grep --color=auto'     

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
