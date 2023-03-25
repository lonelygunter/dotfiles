# bash color
export CLICOLOR=1
export LSCOLORS=GxFaCxDxBxegedabagaced
#gxbaCxDxcxegedabagaced
#GxFxCxDxBxegedabagaced

# bash prompt
PS1='\n \w\n \[\033[00;31m\]>>\[\033[00m\] '
#PS1='\n\[\033[00;36m\] \w\[\033[00m\]\n \[\033[00;31m\]>>\[\033[00m\] '
#PS1='\[\033[00;37m\]\n┌ \[\033[00m\]\[\033[00;36m\]\w\[\033[00m\]\n\[\033[00;37m\]└\[\033[00m\] \[\033[00;31m\]>>\[\033[00m\] '
#PS1='\[\033[00;36m\]\n┌ \@\[\033[00m\]\[\033[00;37m\] $(tty | cut -c 10-12)|$$\[\033[00m\]:\[\033[00m\] \[\033[00;36m\]\w\[\033[00m\]\n\[\033[00;36m\]└ $ \[\033[00m\]'


# alias to redirect stdout of history in less
alias history='history | less'

# alias for python
alias python=python3

# alias to move more easier
alias ll='ls -la'
alias la='ls -A'

# function to use manual as pdf
pman() {
	man -t "$1" | open -f -a /System/Applications/Preview.app
}

. "$HOME/.cargo/env"

# alias for ssh unisalento
alias hplinux3='ssh -p 2552 aaprile317@hplinux3.unisalento.it'

# function for ssh unisalento
transhplinux3() {
	echo "scp -P 2552 -r $1 aaprile317@hplinux3.unisalento.it:/home/aaprile317/$2"
	scp -P 2552 -r "$1" aaprile317@hplinux3.unisalento.it:/home/aaprile317/"$2"
}

# funtion to connect to ssh server of KOReader
sshKOReader(){
	echo "ssh -p 2222 root@192.168.1.248"
	ssh -p 2222 root@192.168.1.248
}

# function for ssh unisalento
transKOReader() {
	echo "scp -P 2552 -r $1 root@192.168.1.248:/mnt/onboard/$2"
	scp -P 2552 -r "$1" root@192.168.1.248:/mnt/onboard/"$2"
}



# function to convert md to pdf
alias mdtopdf='pandoc -V geometry:margin=0.5in -V fontsize:17pt -V documentclass=extarticle '

# define variable
INC="/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/"
GIT="/Users/matt/Documents/Github"
SS="/Users/matt/Documents/Github/2nd-brain/box/Uni/SS"
SE="/Users/matt/Documents/Github/2nd-brain/box/Uni/SE"
SAED="/Users/matt/Documents/Github/2nd-brain/box/Uni/SAED"
IOT="/Users/matt/Documents/Github/2nd-brain/box/Uni/IOT"
BOX="/Users/matt/Documents/Github/2nd-brain/box"
