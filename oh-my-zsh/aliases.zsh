# Directory Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Shortcut to Projects
p() { cd $HOME/Projects/$*; }

# Shortcut to Courses
c() { cd $HOME/Dropbox/Courses/$*; }

# Shortcut to fx-team
fx() { cd $HOME/Projects/fx-team/$*; }
fxp() { cd $HOME/Projects/fx-team/.hg/patches/$*; }

# General Command Aliases
alias s='ls'
alias ps='ps aux'
alias v='vim'
alias a='ls -a'
alias al='ls -al'
alias rf='rm -rf'
alias rake='noglob rake'
alias cdf='ssh g1luongg@cdf.toronto.edu'

# Firefox Development Aliases
alias b='./mach build faster'
alias run='./mach run'
alias dt='./mach test'
alias mt='./mach mochitest'
alias mtd='./mach mochitest --jsdebugger'
alias try='hp try && hg push -f try'

# Git Aliases
alias gs='git status'
alias gpom='git pull origin master'
alias gpp='git pull --rebase upstream master && git push'

# Mercurial Aliases
alias hs='hg status'
alias hp='hg qpush --move'
alias hu='hg pull -u'
alias hd='hg diff'
alias ha='hg qapplied'
alias hr='hg qrefresh'
alias hq='hg qpop'
