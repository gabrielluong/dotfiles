# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="doubleend"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(sublime osx git mercurial brew zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:/Users/oracle/.mozbuild/version-control-tools/git/commands:/Users/oracle/Projects/wig"

source $ZSH/oh-my-zsh.sh
source /Users/oracle/.cargo/env

# Enable compression
export CCACHE_COMPRESS=""
export CCACHE_DIR=/Users/oracle/.ccache
