autoload -U zmv
autoload -Uz compinit
compinit
source /usr/share/fzf/shell/key-bindings.zsh

bindkey -v

export PATH=$HOME/Public/bin:/usr/local/bin:$HOME/.cargo/bin:$PATH
export MANPATH="/usr/share/man:$MANPATH"
export LANG=en_US.UTF-8
export TERM=foot
export TERMINAL=foot
export EDITOR='vim'
export VISUAL=$EDITOR
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
export ZSH="$HOME/.oh-my-zsh"
export XDG_SCREENSHOTS_DIR="$HOME/Pictures/Screenshots"
export PAGER="/usr/bin/most"
export ARCHFLAGS="-arch x86_64"

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

plugins=(git fzf fancy-ctrl-z zoxide ssh-agent copyfile copybuffer extract)
weechat() {
	exec bash -lc weechat
}

alias zshconfig="vim ~/.zshrc"
alias cls="clear"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zcp='zmv -C'
alias zln='zmv -L'
alias nasm='nasm -g -f elf64'
alias clang='clang -g -std=c99 -Wall -Werror'

source $ZSH/oh-my-zsh.sh
alias "sudo vim"="sudo -e"
