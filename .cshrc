# .cshrc

#stty erase "^?" kill "^U" intr "^C" eof "^D"
#setenv TERM ansi

#setenv COLUMNS 100
#setenv MANWIDTH 80      # for enscript

setenv LC_CTYPE C
setenv LANGUAGE C
setenv LC_ALL C
setenv LANG en_US.UTF-8

setenv PAGER less
setenv LESS "-iX"
setenv CC /usr/bin/cc
setenv EDITOR vi
setenv SVN_EDITOR "gvim -f"
setenv VISUAL "gvim -f"
setenv XMLLINT_INDENT "    "

set activemq_path=""
set grails_path=""
set ROO_PATH=""
if (-r ~/.csh/java) then
    source ~/.csh/java
endif

set ANDROID_PATH=""
if (-r ~/.csh/andriod) then
    source ~/.csh/andriod
endif

# User specific aliases and functions
#setenv PERL5LIB $HOME/local/lib/site_perl/5.8.3
#setenv MANPATH "$HOME/local/man/:`cat /etc/MANPATH`"
#setenv PATH "$HOME/local/bin/:/opt/hpws/apache/bin:`cat /etc/PATH`"

setenv PATH .:$HOME/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/X11R6/bin:/usr/games:/usr/lib/xscreensaver:/opt/firefox${grails_path}${ANDROID_PATH}${ROO_PATH}${activemq_path}

#setenv MANPATH "`manpath`"

limit coredumpsize 0

#
#    ls aliases
#
#alias ls     'ls -Fx'
alias ls     'ls -Fx --color=auto'
alias ldirs  'find . \! -name "." -prune -type d -print | less'
alias lfils  'find . \! -name "." -prune -type f -print | less'
alias lexe   'ls -1 | grep "*"'
alias lless  'ls -Fa | less'
#
#    cd aliases
#
# These two lines put the entire path into the prompt...
#alias a     'cd \!*;set prompt="`hostname`-${cwd}:! >"'
#alias cd    'cd \!*;set prompt="`hostname`-${cwd}:! >"'
# ...these two use only the current directory.  
alias cd     'cd \!*;set prompt="`whoami`@`hostname`-${cwd:t}:! >"'
alias up     'cd ..'                       # move up 1 directory level
#
#    pushd maintains a stack of directories for easy return, popd removes
#    a directory from the stack.
#    b and y do pushd & popd while setting the prompt to the current directory.
#
alias y      'popd \!*;set prompt="`whoami`@`hostname`-${cwd:t}:! >"'
alias b      'pushd \!*;set prompt="`whoami`@`hostname`-${cwd:t}:! >"'
alias dv     'dirs -v'
#
#     general aliases
#
alias bu          'cp \!^ \!^.bak'         # backup a file
alias h           'history'                # convienent history
alias hgrep       'history | grep \!^'     #
alias rcpbg      '( \!* ) < /dev/null &'   # for preventing stopped jobs
alias unbu        'cp \!^.bak \!^'         #
#
alias histfilehere 'set histfile=`pwd`/history'
alias treenocvs 'tree -I CVS'
#
setenv GREP_OPTIONS '--directories=skip'
#
cd .
umask 022
#
#    useful settings 
#
set mail = 600
set history = 1000
set notify
set ignoreeof
set complete
set list
set filec

# cvs aliases
alias cvs_show_unknown 'cvs -qn upd | grep "^? " | cut -f2 -d" "'
alias cvs_show_changed 'cvs -qn upd | grep "^M " | cut -f2 -d" "'
alias cvs_show_added   'cvs -qn upd | grep "^A " | cut -f2 -d" "'
alias cvs_show_removed 'cvs -qn upd | grep "^R " | cut -f2 -d" "'
alias cvs_show_pending 'cvs -qn upd | grep -v "^? " | cut -f2 -d" "'

# git aliases
alias gsb git-show-branch

# particular things
alias plt prove -l t
alias pt  perltidy -st

alias ccopts perl -MExtUtils::Embed -e ccopts
alias ldopts perl -MExtUtils::Embed -e ldopts

#         set this for all shells
set noclobber

set savehist
# If env var is set, use it
if ( $?HISTFILE ) then
    set histfile="$HISTFILE"
endif

alias mz mutt -Z
alias my mutt -y
alias mutf mutt -f

alias vbm VBoxManage

alias pt perltidy
