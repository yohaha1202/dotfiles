# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/mysql/bin:$HOME/.composer/vendor/bin:~/bin:$PATH
# export GOPATH=$HOME/go
# export GOROOT=/usr/local/go
# export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="bira"
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_MODE=nerdfont-complete
POWERLEVEL9K_TIME_FORMAT='%D{%H:%M}'
POWERLEVEL9K_VCS_GIT_ICON='\uf1d3'
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uf09b'
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir dir_writable vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs command_execution_time time)

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR=$(which vim)

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# if [[ $(uname) == 'Linux' ]]; then
#     alias ls="ls -al --color=always"
# else
#     alias ls="ls -Gal"
# fi
alias gs="git status"
alias gd="git diff"
alias gdo="git diff origin"
alias gc="git commit -m"
alias gca="git commit --amend"
alias gl="git log"
alias gplp="git pull -p"
alias gplr="git pull --rebase"
alias grepe="grep -i -nr --exclude-dir=vendor --exclude-dir=node_modules --exclude-dir=webroot"
alias vimins="vim +PluginInstall +qall"
alias vimupd="vim +PluginUpdate +qall"
alias vimdel="vim +PluginClean +qall"
alias comins="composer install"
alias comupd="composer update"
alias tag="ctags -R"
alias ls="ls -al"
alias v="vagrant"

# alias today='today'
# alias todate='todate'
alias e='exit'

function today() {
    d=$(date "+%F %s");
    echo $d;
}
function todate() {
    c1=$(echo '<?php $date = $_SERVER["argv"][1];echo date("Y-m-d H:i:s", $date); ?>' > ~/work/phpscript.php);
    c2=$(php ~/work/phpscript.php $1);
    echo $c2;
    $(rm ~/work/phpscript.php);
}
function totime() {
    c1=$(echo '<?php $date = $_SERVER["argv"][1];echo strtotime($date); ?>' > ~/work/phpscript.php);
    c2=$(php ~/work/phpscript.php $1);
    echo $c2;
    $(rm ~/work/phpscript.php);
}

function to36() {
    c1=$(echo '<?php $base10 = $_SERVER["argv"][1];echo base_convert($base10, 10, 36); ?>' > ~/work/phpscript.php);
    c2=$(php ~/work/phpscript.php $1);
    echo $c2;
    $(rm ~/work/phpscript.php);
}

function to10() {
    c1=$(echo '<?php $base36 = $_SERVER["argv"][1];echo base_convert($base36, 36, 10); ?>' > ~/work/phpscript.php);
    c2=$(php ~/work/phpscript.php $1);
    echo $c2;
    $(rm ~/work/phpscript.php);
}
