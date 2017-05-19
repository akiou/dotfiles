set -x XDG_CONFIG_HOME $HOME/.config
set -x JUNIT_HOME /usr/local/java
set -x CLASSPATH . /usr/local/java/junit-4.12.jar $CLASSPATH
set -x PATH /usr/bin
set -x PATH /usr/sbin $PATH
set -x PATH /sbin $PATH
set -x PATH /bin $PATH
set -x PATH /usr/local/bin $PATH
set -x PATH /usr/local/sbin $PATH
set -x PATH $HOME/.nodebrew/current/bin $PATH
set -x PATH /Library/TeX/texbin $PATH
set -x PATH /Applications/TeXLive/Library/texlive/2013/bin/x86_64-darwin $PATH
set -x PATH /Applications/TeXLive/Library/mactexaddons/bin $PATH
set -x NVM_DIR $HOME/.nvm

set fish_theme agnoster

alias mvim="/Applications/MacVim.app/Contents/MacOS/Vim -g"
alias mdown="open -a MacDown "
alias todo="mvim ~/Dropbox/todo.md"
