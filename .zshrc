# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=2000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pree/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
# End of lines added by compinstall

## LFCD
lfcd() {
    # `command` is needed in case `lfcd` is aliased to `lf`
    cd "$(command lf -last-dir-path /dev/stdout "$@")"
}

# keybinds
bindkey -e
bindkey "^[[3~" delete-char
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[3~" delete-char
bindkey "\ek"   up-line-or-history
bindkey "\ej"   down-line-or-history

# my
setopt autocd # autocd
setopt PROMPT_SUBST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt share_history
eval "$(dircolors -b)"
#export PATH=$PATH:~/.local/bin/
# export EDITOR=nvim
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

# Prompt settings
# RPS1='%F{red}%D{%I}%f:%F{green}%D{%M}%f %F{yellow}%D{%p}%f [%?]' # right prompt
PS1='%F{5}%B%U%~%u%b%f ${vcs_info_msg_0_}
%B%F{blue}>%f%b '	# prompt

zstyle ':completion:*' menu select # menu tab complete

# export BROWSER=firefox.desktop

# My functions
myls ()
{
    if [ "$TERM" != "linux" ]; then
        exa --icons "$@"
    else
        exa --no-icons "$@"
    fi
}

myll ()
{
    if [ "$TERM" != "linux" ]; then
        exa -l --icons "$@"
    else
        exa -l --no-icons "$@"
    fi
}

# quickly cd into configuration files
configdir="$HOME/.config"
cfg ()
{
    [ -d "$configdir/$1" ] && lf "$configdir/$1/" && return
    echo "$configdir/$1 doesn't exists"
}


# my aliases
alias sxiv='nsxiv'
alias qbit='QT_SCALE_FACTOR=1.2 qbittorrent'
alias icat='kitten icat'
alias ff='findfile'
alias starty='cd $HOME && Hyprland && cd -'
alias py='python'
alias cpout='xclip -selection clipboard'
alias nv='nvim'
alias sudo='sudo '
alias ls='myls '
alias ll='myll '
alias grep='grep --color=always'
alias tree='tree -C'
alias rn='ranger'
alias zt='zathura'
alias sound='pamixer -t'
alias pacman='pacman --color=always'
alias yay='yay --color=always'
alias vid='ytfzf'
alias mus='ytfzf -m'
alias send='qrcp'
alias receive='qrcp receive'
alias gnome='dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY && startx /usr/bin/gnome-session'
alias dmenu='dmenu.sh'
alias 'glava'="sed '4q;d' ~/.cache/wal/colors2 | glava -di"
alias arduino-cli="arduino-cli -p /dev/ttyUSB0 --fqbn arduino:avr:nano"
alias arduino-clear="arduino-cli compile ~/Arduino/clear/clear.ino && arduino-cli upload /home/pree/Arduino/clear/clear.ino"
alias \215A\201="kbd_mode -a"
alias hd="hexdump"
alias youtube="ytfzf -ls"
alias notes="nvim /home/pree/Notes/index.md"
#alias gns3='QT_STYLE_OVERRIDE="" gns3'

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
if [ "$TERM" = "linux" ]; then
    setterm --cursor on
fi

# FZF
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
export FZF_COMPLETION_TRIGGER=''
export FZF_DEFAULT_COMMAND='find .'
export FZF_DEFAULT_OPTS='-m'
bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion

# Syntax Highlighting (should be at last)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
