# PS1 Customization
parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
      
}
export PS1="\e[1;32m\u@\h \e[0;33m\w\e[m\n\e[0;36m\$(parse_git_branch)$\e[m\[$(tput setaf 6)\] "
