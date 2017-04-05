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
tf() { cd $HOME/Projects/tofino/$*; }

hpfx() { hg qfinish -a; hg push inbound; }
gpa() { fxp; ga .; gc -m "backup"; gp; fx; }

# General Command Aliases
alias s='ls'
alias ps='ps aux'
alias v='vim'
alias a='ls -a'
alias al='ls -al'
alias rf='rm -rf'

# Firefox Development Aliases
alias build='fx && ./mach build'
alias bf='fx && ./mach build faster'
alias bd='fx && ./mach build devtools'
alias run='fx && ./mach run'
alias dt='fx && ./mach test'
alias mt='fx && ./mach mochitest'
alias mtd='fx && ./mach mochitest --jsdebugger'
alias try='fx && hp try && hg push -f try'
alias purge='fx && hg revert -a && hg purge'

# Git Aliases
alias gs='git status'
alias gpom='git pull origin master'
alias gpp='git pull --rebase upstream master && git push'

# Mercurial Aliases
alias hs='hg status'
alias hp='hg qpush --move'
alias hu='hg pull -u'
alias hub='hg pull -u && ./mach build'
alias hd='hg diff'
alias ha='hg qapplied'
alias hr='hg qrefresh'
alias hq='hg qpop'