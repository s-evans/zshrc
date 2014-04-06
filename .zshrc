# Path to git repo
ZSHRC_ROOT=$HOME/.zsh/

# Path to non-oh-my-zsh plugins
MANUAL_PLUGIN_DIR=$ZSHRC_ROOT/.other

# Path to oh-my-zsh installation
export ZSH=$ZSHRC_ROOT/.oh-my-zsh

# Enable plugins
plugins=(git vi-mode screen tmux)

# Load oh my zsh
source $ZSH/oh-my-zsh.sh

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Set terminal line
PS1="%n@%m:%c$ "

# Additional vim maps
bindkey jj .vi-cmd-mode
bindkey -a '^R' redo
bindkey -a u undo
bindkey -a 'gg' beginning-of-buffer-or-history
bindkey -a 'g~' vi-oper-swap-case
bindkey -a G end-of-buffer-or-history

# Load non-oh-my-zsh plugins

# Addtional vim text objects
source $MANUAL_PLUGIN_DIR/opp/opp.zsh

# Even more text objects
source $MANUAL_PLUGIN_DIR/opp/opp/*.zsh
