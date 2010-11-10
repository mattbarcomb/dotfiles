set -o vi

#prompt
function parse_git_branch {
	ref=$(git symbolic-ref HEAD 2> /dev/null) || return
		  echo "("${ref#refs/heads/}")"
}

export PS1="\w \$(parse_git_branch)\$ "

export EDITOR=vim

alias 'ls=ls -G'
alias 'l=ls -l'
alias 'la=ls -la'
alias 'psg=ps ax | grep'
alias 'x=exit'

#http://github.com/rupa/z
. ~/Programming/dotfiles/z.sh

#function to set window/tab title
function st {
 export PROMPT_COMMAND="echo -ne \"\033]0;$1\007\""
}

#rvm
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
