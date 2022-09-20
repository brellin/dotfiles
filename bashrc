# Aliases
alias la="ls -a"
alias ll="ls -l"
alias lal="ls -al"
alias rc='source ~/.bashrc'

# Functions
cm() {
	mkdir "$1"
	cd "$1"
}
cl() {
    cd "$1"
    ls
}
submit() {
	git add .
	git commit -m "$1"
	git push
}
commit(){
	git add .
	git commit -m "$1"
}
branchup(){
	git checkout -b $1
	git push -u origin $1
}

export PS1="\e[1;32m\u@\h \e[0;33m\w\e[m\n\e[0;36m$\e[m\[$(tput setaf 6)\] "
