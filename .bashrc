# bash color
export CLICOLOR=1
export LSCOLORS=GxFaCxDxBxegedabagaced
export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH=/opt/homebrew/bin:$PATH:/usr/local/texlive/2024basic/bin/universal-darwin
#gxbaCxDxcxegedabagaced
#GxFxCxDxBxegedabagaced

# macro/function for PS1 prompt
BLACK='\[\033[00;30m\]'
RED='\[\033[00;31m\]'
GREEN='\[\033[00;32m\]'
YELLOW='\[\033[00;33m\]'
BLUE='\[\033[00;34m\]'
MAGENTA='\[\033[00;35m\]'
CYAN='\[\033[00;36m\]'
GRAY='\[\033[00;90m\]'
WHITE='\[\033[00;97m\]'

LGRAY='\[\033[00;37m\]'
LRED='\[\033[00;91m\]'
LGREEN='\[\033[00;92m\]'
LYELLOW='\[\033[00;93m\]'
LBLUE='\[\033[00;94m\]'
LMAGENTA='\[\033[00;95m\]'
LCYAN='\[\033[00;96m\]'

NC='\[\033[00m\]'

gitONprompt() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/─( \1)/'
}

venvONprompt() {
  if [[ -n "$VIRTUAL_ENV" ]]; then
    echo "─($(basename $VIRTUAL_ENV))"
  fi
}

promptCustom(){
  if [ $? -eq 0 ]; then
					PS1="\n${CYAN}┌──(${NC}${MAGENTA}\u@\h${NC}${CYAN})─[${NC}${LGRAY}\w${NC}${CYAN}]\$(gitONprompt)\$(venvONprompt) ${LGRAY}\@${NC} ${CYAN}[${NC}${LGREEN}O${NC}${CYAN}]\n${NC}${CYAN}└─${NC}${MAGENTA}\$${NC} "
  else 
    PS1="\n${CYAN}┌──(${NC}${MAGENTA}\u@\h${NC}${CYAN})─[${NC}${LGRAY}\w${NC}${CYAN}]\$(gitONprompt)\$(venvONprompt) ${LGRAY}\@${NC} ${CYAN}[${NC}${LRED}X${NC}${CYAN}]\n${NC}${CYAN}└─${NC}${MAGENTA}\$${NC} "
  fi
}

# bash prompt
PROMPT_COMMAND=promptCustom

# PS1="\n${CYAN}┌──(${MAGENTA}\u@\h${CYAN})─[${BLACK}\w${CYAN}]\$(gitONprompt)${CYAN}\n└─${MAGENTA}\$${NC} "

# PS1="\n \w\n ${RED}>>${NC} "
# PS1="\n${CYAN} \w${NC}\n ${RED}>>${NC} "
# PS1="${LGRAY}\n┌ ${NC}${CYAN}\w${NC}\n${LGRAY}└${NC} ${RED}>>${NC} "
# PS1="${CYAN}\n┌ \@${NC}${LGRAY} $(tty | cut -c 10-12)|$$${NC}:${NC} ${CYAN}\w${NC}\n${CYAN}└ $ ${NC}"


# alias to redirect stdout of history in less
alias history='history | less'

# alias for python
# alias python=python3
# alias pip=pip3

# alias to move more easier
alias ll='ls -la'
alias la='ls -A'

# function to use manual as pdf
pman() {
	man -t "$1" | open -f -a /System/Applications/Preview.app
}

# alias for ssh unisalento
alias hplinux3='ssh -p 2552 aaprile317@hplinux3.unisalento.it'

# function for ssh unisalento
transhplinux3() {
	echo "scp -P 2552 -r $1 aaprile317@hplinux3.unisalento.it:/home/aaprile317/$2"
	scp -P 2552 -r "$1" aaprile317@hplinux3.unisalento.it:/home/aaprile317/"$2"
}

# set up gitlab folder config
setupffGitlab() {
  echo "git config user.name \"matteo.aprile\""
  git config user.name "matteo.aprile" 
	echo "git config user.email \"matteo.aprile@foolfarm.com\""
  git config user.email "matteo.aprile@foolfarm.com" 
}

# set up gitlab folder config
setupGitlab() {
  echo "git config user.name \"lonelygunter\""
  git config user.name "lonelygunter" 
	echo "git config user.email \"aprile.matteo01@gmail.com\""
  git config user.email "aprile.matteo01@gmail.com" 
}

# alias for ghidra
alias ghidra='ghidraRun'

# function to convert md to pdf
alias mdtopdf='pandoc -V geometry:margin=0.5in -V fontsize:17pt -V documentclass=extarticle '

# define variable
INC="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/"
GH="/Users/matt/Documents/Github"
GL="/Users/matt/Documents/GitLab"

# alias for exiftool (tool to delete metadata)
alias delmeta='exiftool -all='

# alias git
alias gitk='gitk --all'
alias gitb='git branch -a'
alias gitf='git fetch --prune'

# foolfarm aliases
alias ffDockerFormat='docker ps --format "table {{.Names}}\t{{.ID}}\t{{.Status}}\t"'

# python venv alias
alias vact='source .env/bin/activate'
alias vcre='/opt/homebrew/bin/python3 -m venv .env'
alias vdel='rm -rf .env'
alias vres='vdel; vcre; vact'

# Green server TU Delft
alias gserver='ssh -i ~/.ssh/id_tudelft_greenserver matteo-aprile@145.94.32.58'
