# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias killyum='sudo rm -f /var/run/yum.pid'

alias grepnri="grep -nri "
alias explorer="nautilus --new-window "

alias gitst="git status -u "
alias gitci="git commit "
alias gitck="git checkout "
alias gitpl="git pull "
alias gitciamend="git commit --amend"
alias gitremote="git remote -v"
alias gitbr="git branch -a"
alias gitlog="git log "
alias gitlognomergespatch="git log --no-merges -p"
alias gitadd="git add -A "
alias gitpushcurbranch="CURBR=`git branch| awk '{print $2}'` && git push origin $CURBR"


#for  PATH and other define
export PATH=$PATH:/home/duo/CodeSourcery/Sourcery_CodeBench_Lite_for_Xilinx_GNU_Linux/bin
alias killyum='sudo rm -f /var/run/yum.pid'
alias explorer="nautilus --new-window "

