# Path to your oh-my-zsh configuration.
export ZSH=/Users/zhaoshua/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git autojump Completion last-working-dir screen vi-mode)

source $ZSH/oh-my-zsh.sh
source $HOME/Lib/create-gk-aliases.sh

#export PYTHONPATH="/usr/local/lib/python2.7/dist-packages/tornado-3.2-py2.7-linux-x86_64.egg/tornado:${PYTHONPATH}"
# export MANPATH="/usr/local/man:$MANPATH"

#export PATH="$PATH:/Users/zhaoshua/Library/Python/3.5/bin"
# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
DEFAULT_USER=`whoami`
setopt interactivecomments

#source /home/kamel/.vim/bundle/powerline/powerline/bindings/zsh/powerline.zsh

#eval `dircolors ~/.dircolors`

#bindkey -v



export BRAZIL_AUTO_BACKUP=1
setopt AUTO_CD
alias tmux="TERM=screen-256color-bce tmux"
alias vim='/usr/local/bin/vim'
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
fpath=(~/dotConf/zsh-completions/src $fpath)
stty -ixon
alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'
alias bb=brazil-build
alias bbc="brazil-build clean"
alias brc=brazil-recursive-cmd
alias bbb='brc --allPackages brazil-build'
alias bbb="brazil-build clean"
alias bbs="brazil-build server"
alias odin="ssh -fNL 2009:127.0.0.1:2009 zhaoshua-pdx.aka.corp.amazon.com"
alias ssho="ssh -o ProxyCommand=none"
alias killNinja="kill -9 $(ps aux | grep 'ninja' | awk '{print $2}')"


sshForward() {
    ssh -o ProxyCommand=none -T -N -L $1\:localhost\:$2 dev-dsk-zhaoshua-2a-c863465a.us-west-2.amazon.com
}

alias forward=sshForward
alias cr='cr --pull-request false'
export PATH=$BRAZIL_CLI_BIN:$PATH
export PATH=$HOME/.toolbox/bin:$PATH
