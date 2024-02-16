#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export PS1="\[\033[1;94m\]{\[\e[1;92m\]\W\[\e[0m\]\[\033[1;94m\]}\[\e[0m\]\[\033[0;37m\] \[\e[1;91m\]> \[\e[0m\]"
PROMPT_DIRTRIM=1
export HISTCONTROL=ignoreboth:erasedups

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ftor='find . -maxdepth 1 -name "*.torrent" -exec rm -rf {} \;'
alias psx='ps aux | grep'
#alias vim='nvim'
if type nvim >/dev/null 2>&1; then
    alias vim='nvim'
fi
# TMUX
# alias tmux='if tmux ls &>/dev/null;then exec tmux a;else exec tmux;fi'
# if tmux ls &> /dev/null; then
#   exec tmux a
# else
#   exec tmux
# fi

#alias nvimconf='nvim ~/.config/nvim/init.vim'
alias sudo='sudo '
# alias mc='export DE=xfce && mc'
alias ls='ls --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# alias tvemu='xfreerdp -grab-keyboard /rfx /cert-ignore /t:TVEmu /size:1245x815 /v:192.168.50.5:3389'
# alias winemu='xfreerdp -grab-keyboard /rfx /cert-ignore /t:Win10 /size:1366x768 /v:192.168.50.5:3391'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# PS1='[\u@\h \W]\$ '

# ssh() {
#    tmux rename-window "$*"
#    command ssh "$@"
#    tmux setw automatic-rename
# }

mlive() {
    mpv --no-video "$1" >/dev/null 2>&1
}


alias setclip='xclip -selection c'
alias getclip='xclip -selection c -o'

#FZF
# shellcheck disable=SC1091
source /usr/share/fzf/completion.bash && source /usr/share/fzf/key-bindings.bash

# Yarn
# export PATH="$(yarn --offline global bin):$PATH"

# Prevent MC using starship prompt
## shellcheck disable=SC2009
if ps $PPID | grep mc; then
    PS1="\[\033[1;94m\]{\[\e[1;92m\]\W\[\e[0m\]\[\033[1;94m\]}\[\e[0m\]\[\033[0;37m\] \[\e[1;91m\]> \[\e[0m\]"
else
    eval "$(starship init bash)"
fi
# source $HOME/.profile
