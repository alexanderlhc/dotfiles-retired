# XDG Paths
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

typeset -U PATH path
path=(
	"$HOME/.local/bin"
	"$(yarn global bin)"
	"$path[@]"
	"$HOME/.local/share/npm-global/bin"
	"$(ruby -e 'puts Gem.user_dir')/bin")
export PATH

# Disable less history
export LESSHISTFILE=-

# Fixing Paths
# https://wiki.archlinux.org/index.php/XDG_Base_Directory
#export GNUPGHOME="$XDG_DATA_HOME"/gnupg
#gpg2 --homedir "$XDG_DATA_HOME"/gnupg

# XDG adhere
ZDOTDIR=$HOME/.config/zsh
export HISTFILE="$XDG_DATA_HOME"/zsh/history
#export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export GOPATH="$XDG_DATA_HOME"/go
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
# yarn from aliases: alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ANDROID_AVD_HOME="$XDG_DATA_HOME"/android/
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android/
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android

# App variables
export EDITOR="nvim"
export READER="okular"
export VISUAL="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export VIDEO="mpv"
export IMAGE="sxiv"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export PAGER="less"
export WM="bspwm"
