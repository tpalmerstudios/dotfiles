autoload -U zmv
export PATH=$HOME/scripts:/usr/local/bin:$PATH
export MANPATH="/usr/share/man:$MANPATH"
export LANG=en_US.UTF-8
export TERM=rxvt-unicode
export TERMINAL=rxvt-unicode
export EDITOR='vim'
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
export ZSH="$HOME/.oh-my-zsh"
export ARCHFLAGS="-arch x86_64"
export hlalib=/home/tpalmerstudios/usr/hla/hlalib/hlalib.a
export hlainc=/home/tpalmerstudios/usr/hla/include

ZSH_THEME="agnoster"
HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 7

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

HIST_STAMPS="mm/dd/yyyy"

plugins=(git fancy-ctrl-z solarized-man ssh-agent copyfile copybuffer extract ag)

source $ZSH/oh-my-zsh.sh

# Example aliases
alias zshconfig="vim ~/.zshrc"
alias cls="clear"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zcp='zmv -C'
alias zln='zmv -L'
alias hla='hla -lmelf_i386 -v'
alias nasm='nasm -g -f elf64'
