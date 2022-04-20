

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pree/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
# End of lines added by compinstall

# keybinds
bindkey "^[[3~" delete-char
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[3~" delete-char

# my
setopt autocd # autocd
setopt PROMPT_SUBST
eval "$(dircolors -b)"
#export PATH=$PATH:~/.local/bin/
export PATH=/home/pree/.local/bin:$PATH
TIMEFMT=$'\n================\nCPU\t%P\nuser\t%*U\nsystem\t%*S\ntotal\t%*E'

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:*' enable git
# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git*' formats '(%b%u%c) '

# RPS1='%F{red}%D{%I}%f:%F{green}%D{%M}%f %F{yellow}%D{%p}%f [%?]' # right prompt
PS1='%F{5}%B%U%~%u%b%f ${vcs_info_msg_0_}
%B%F{blue}>%f%b '	# prompt

zstyle ':completion:*' menu select # menu tab complete

# Environment Variables 
export PATH=$PATH:~/.local/bin/
export BROWSER=firefox
export ANDROID_SDK_ROOT=/opt/android-sdk/
export _JAVA_AWT_WM_NONREPARENTING=1

# my aliases
alias nv='nvim'
alias sudo='sudo '
alias py='python'
alias ls='ls --color=always'
alias grep='grep --color=always'
alias tree='tree -C'
alias rn='ranger'
alias zt='zathura'
alias vol='pamixer --set-vol'
alias sound='pamixer -t'
alias pacman='pacman --color=always'
alias yay='yay --color=always'
alias vid='ytfzf'
alias mus='ytfzf -m'
alias send='qrcp'
alias receive='qrcp receive'
alias gnome='dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY && startx /usr/bin/gnome-session'
alias dmenu='dmenu.sh'
alias javax='/usr/lib/jvm/java-18-openjdk/bin/java --enable-preview'
alias 'glava'="sed '4q;d' ~/.cache/wal/colors2 | glava -di &"

# my startups
if [ "$TERM_PROGRAM" = "vscode" ]
then
(cat ~/.cache/wal/sequencesforcode &)
else
(cat ~/.cache/wal/sequences &)
fi
#eval "$(starship init zsh)"
#exec startx
~/.cache/wal/colors-tty.sh

# Syntax Highlighting
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/pree/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
