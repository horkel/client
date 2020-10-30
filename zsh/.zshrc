export ZSH="$HOME/.config/oh-my-zsh"
ZSH_THEME="alpha"
DISABLE_AUTO_UPDATE="true"
HIST_STAMPS="yyyy-mm-dd"
ZSH_CUSTOM="$HOME/.config/zsh-custom"
ZSH_COMPDUMP="$HOME/.cache/zcompdump-${HOST/.*/}-${ZSH_VERSION}"
plugins=(zsh-completions docker docker-compose gitfast)
source $ZSH/oh-my-zsh.sh
