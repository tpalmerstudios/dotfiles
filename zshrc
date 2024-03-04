autoload -U zmv
autoload -Uz compinit
compinit

export PATH=$HOME/scripts:/usr/local/bin:$PATH
export MANPATH="/usr/share/man:$MANPATH"
export LANG=en_US.UTF-8
export TERM=rxvt-unicode
export TERMINAL=rxvt-unicode
export EDITOR='vim'
export VISUAL=$EDITOR
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
export ZSH="$HOME/.oh-my-zsh"
export ARCHFLAGS="-arch x86_64"
export hlalib=/home/tpalmerstudios/usr/hla/hlalib/hlalib.a
export hlainc=/home/tpalmerstudios/usr/hla/include

ZSH_THEME="agnoster"
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 7

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="mm/dd/yyyy"
setopt appendhistory
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS

plugins=(git bgnotify fancy-ctrl-z solarized-man ssh-agent copyfile copybuffer extract ag)
case $- in *i*)
#    [ -z "$TMUX" ] && exec tmux
esac

alias zshconfig="vim ~/.zshrc"
alias cls="clear"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zcp='zmv -C'
alias zln='zmv -L'
alias hla='hla -lmelf_i386 -v'
alias nasm='nasm -g -f elf64'

source $ZSH/oh-my-zsh.sh

