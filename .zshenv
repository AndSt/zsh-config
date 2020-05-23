# vim: ft=zsh

# Set XDG Base Directory
#   - https://wiki.archlinux.org/index.php/XDG_Base_Directory
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_LOCAL_HOME="${HOME}/.local"
export XDG_DATA_HOME="${XDG_LOCAL_HOME}/share"

# Set Path
export PATH=/usr/local/bin:$PATH

# Set Zsh config directory
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
export ZSH="${XDG_CONFIG_HOME}/oh-my-zsh"
export HISTFILE="${XDG_CACHE_HOME}/zsh/history"
export ZSH_COMPDUMP="${XDG_CACHE_HOME}/zsh/zcompdump-${SHORT_HOST}-${ZSH_VERSION}"

