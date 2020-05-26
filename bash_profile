# switch to zsh
exec $(which zsh)

# enables color in the terminal bash shell
export CLICOLOR=1

# sets up the color scheme for list
export LSCOLORS=ExFxCxDxBxegedabagacad

# enables color for iTerm
export TERM=xterm-color
export TERM="xterm-color"

# sets up proper alias commands when called
alias ll='ls -al --color'
alias ls='ls --color'
alias vi='vim'

# display git branch
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

export PATH=~/bin:.:$PATH
