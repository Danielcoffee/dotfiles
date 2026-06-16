#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias lla='ls -la --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias vi='nvim'
alias vim='nvim'
alias ztz='zathura'
alias off='systemctl poweroff'
alias reboot='systemctl reboot'
alias zzz='systemctl suspend'
alias sobash='source ~/.bashrc'
# Yêu cầu: mpv, yt-dlp
alias music='_music() { mpv --no-video "https://www.youtube.com/results?search_query=${*// /+}"; }; _music'

# work with vi
alias vikitty='vi ~/Projects/dotfiles/kitty/kitty.conf'
alias vioption='vi ~/Projects/dotfiles/nvim/lua/options.lua'
alias vibash='vi ~/Projects/dotfiles/bash/.bashrc'
alias vinote='vi ~/Projects/game-indie/notes/*.md'
alias vitmux='vi ~/Projects/dotfiles/tmux/.tmux.conf'
alias vitest='vi ~/Projects/game-indie/00_playground/test_anything/*.lua'

# work with cd
alias cdvim='cd ~/Projects/dotfiles/nvim'
alias cdkitty='cd ~/Projects/dotfiles/kitty'
alias cdgame='cd ~/Projects/game-indie'
alias cddot='cd ~/Projects/dotfiles'
alias cdsetup='cd ~/Projects/dotfiles/setup'
alias cdtmux='cd ~/Projects/dotfiles/tmux'
alias cdtest='cd ~/Projects/game-indie/00_playground/test_anything'
alias cdnote='cd ~/Projects/game-indie/notes'
alias cdcs='cd ~/Projects/92365202/CS50G'
export EDITOR=nvim
export VISUAL=nvim
