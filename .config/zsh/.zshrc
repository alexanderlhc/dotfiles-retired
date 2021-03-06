# If not interactive -> do nothing
[[ $- != *i* ]] && return

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/aliases" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/aliases"	# source alias


HISTFILE=~/.cache/zshhistory	# Location of history file
HISTSIZE=1000			# Maximum history saved to internal history list.
SAVEHIST=1000			# Maximum history saved to histfile
setopt HIST_IGNORE_DUPS # Disable duplicate entries history
stty stop undef			# Disable ctrl-s to freeze terminal.
setopt notify

unsetopt autocd beep extendedglob # Disable defaults

unsetopt nomatch
zstyle :compinstall filename '/home/alexander/.config/zsh/.zshrc'
autoload -Uz compinit
#compinit
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION

########
## Vim
bindkey -v			# Vim-like enabled
echo -ne '\e[5 q' 		# Use beam shape cursor on startup.
precmd() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
    [[ $1 = 'block' ]]; then
      echo -ne '\e[1 q'
    elif [[ ${KEYMAP} == main ]] ||
      [[ ${KEYMAP} == viins ]] ||
      [[ ${KEYMAP} = '' ]] ||
      [[ $1 = 'beam' ]]; then
          echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
# ci", ci', ci`, di", etc
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
  for c in {a,i}{\',\",\`}; do
    bindkey -M $m $c select-quoted
  done
done

# ci{, ci(, ci<, di{, etc
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
    bindkey -M $m $c select-bracketed
  done
done

##
# Prompt
eval "$(starship init zsh)"
