export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias q='exit'
alias c='clear'
alias h='history'
alias cs='clear;ls'
alias p='cat'
alias pd='pwd'
alias lsa='ls -a'
alias lsl='ls -l'
alias t='time'
alias k='kill'
alias null='/dev/null'

alias python='python3'
alias pip='pip3'
alias vimconf='vim ~/.vimrc'
alias bashconf='vim ~/.bashrc'
alias loadbash='source ~/.bash_profile'

export GREP_OPTIONS='--color=auto'

export EDITOR=vim

# Typos because I'm human
alias givm='gvim'
alias cta='cat'
alias gerp='grep'
alias sl='ls'
alias vi='vim'
alias topcpu='top -o cpu -s 2 -i 5'
alias grep='rg'

# Alias command to run a process in the background
acebg() 
{
  nohup ant run &>/dev/null &
}



[ -z "$ZSH_NAME" ] && [ -f ~/.fzf.bash ] && source ~/.fzf.bash
