# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias grepnri="grep -nri "

alias gitst="git status -u "
alias gitci="git commit "
alias gitpl="git pull "
alias gitciamend="git commit --amend"
alias gitremote="git remote -v"
alias gitbr="git branch -a"
alias gitlog="git log "
alias gitlognomergedpatch="git log --no-merged -p"
alias gitadd="git add -A "
alias gitpushcurbranch="CURBR=`git branch| awk '{print $2}'` && git push origin $CURBR"
