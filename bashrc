# System-wide .bashrc file for interactive bash(1) shells.

# To enable the settings / commands in this file for login shells as well,
# this file has to be sourced in /etc/profile.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, overwrite the one in /etc/profile)
# but only if not SUDOing and have SUDO_PS1 set; then assume smart user.
if ! [ -n "${SUDO_USER}" -a -n "${SUDO_PS1}" ]; then
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

# Commented out, don't overwrite xterm -T "title" -n "icontitle" by default.
# If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
#    ;;
#*)
#    ;;
#esac

# enable bash completion in interactive shells
#if ! shopt -oq posix; then
#  if [ -f /usr/share/bash-completion/bash_completion ]; then
#    . /usr/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#  fi
#fi

# if the command-not-found package is installed, use it
if [ -x /usr/lib/command-not-found -o -x /usr/share/command-not-found/command-not-found ]; then
	function command_not_found_handle {
	        # check because c-n-f could've been removed in the meantime
                if [ -x /usr/lib/command-not-found ]; then
		   /usr/lib/command-not-found -- "$1"
                   return $?
                elif [ -x /usr/share/command-not-found/command-not-found ]; then
		   /usr/share/command-not-found/command-not-found -- "$1"
                   return $?
		else
		   printf "%s: command not found\n" "$1" >&2
		   return 127
		fi
	}
fi

# Aliases
alias ls="ls --color=auto"
alias la="ls -a"
alias ll="ls -l"
alias lal="ls -al"
alias rc='source ~/.bashrc'
alias sapps='source /home/umstead/.virtualenvs/virtualenv/bin/activate'
alias dapps='APPS_CONFIG_FILE=/home/umstead/Apps/apps_config/test.toml python3 -m apps'
alias papps='APPS_CONFIG_FILE=/home/umstead/Apps/apps_config/prod.toml python3 -m apps'
alias sell='LESSOPEN="| /usr/bin/source-highlight/src-hilite-lesspipe.sh %s" less -M'

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
puild(){
  pushd "$1" 
  npm run build
  popd
}
_pgb() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Include local bash if exists
if [ -f ~/.bashrc_local ]; then
  source ~/.bashrc_local
fi

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(_pgb)\[\033[00m\] $ "
