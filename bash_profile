alias ls="ls -G"
alias ll="ls -l"

function parse_git_branch {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\[\033[01;35m\]\u@\h:\[\033[01;34m\]\$(parse_git_branch) \[\033[01;32m\]\w \[\033[01;34m\]"

