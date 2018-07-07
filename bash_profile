source ~/.git-completion.bash

export PATH=$HOME/.nodebrew/current/bin:$PATH

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[34m\]\u\[\033[m\]\[\033[1;37m\]@\[\033[m\]\[\033[36m\]\h\[\033[m\] \[\033[32m\]\w\[\033[m\]\[\033[33m\]\$(parse_git_branch)\[\033[m\] $ "
