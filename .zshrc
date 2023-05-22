# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# export homebrew in PATH
export PATH=/opt/homebrew/bin:$PATH 

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
# set custom theme oh-my-posh
# eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/jblab_2021.omp.json)"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
				git
				macos
				zsh-autosuggestions
				zsh-syntax-highlighting
				)

source $ZSH/oh-my-zsh.sh

# for oh-my-posh theme visualization
eval "$(oh-my-posh init zsh)"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias to redirect stdout of history in less
alias history='history | less'

# alias for python
alias python=python3

# alias for ssh unisalento
alias hplinux3='ssh -p 2552 aaprile317@hplinux3.unisalento.it'

# function for ssh unisalento
transhplinux3() {
	echo "scp -P 2552 -r $1 aaprile317@hplinux3.unisalento.it:/home/aaprile317/$2"
	scp -P 2552 -r "$1" aaprile317@hplinux3.unisalento.it:/home/aaprile317/"$2"
}


# alias for ghidra
alias ghidra='/opt/homebrew/Caskroom/ghidra/10.2.3-20230208/ghidra_10.2.3_PUBLIC/ghidraRun'

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

# alias for Tomcat
alias tomcatStartup='cd /Library/Tomcat/bin; ./startup.sh'
alias tomcatShutdown='cd /Library/Tomcat/bin; ./shutdown.sh'

# alias for exiftool (tool to delete metadata)
alias delmeta='exiftool -all='


# Load Angular CLI autocompletion.
source <(ng completion script)

# alias to move more easier
alias ll='ls -la'
alias la='ls -A'
