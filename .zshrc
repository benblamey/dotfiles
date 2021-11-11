setopt interactivecomments

export LDFLAGS="-L/usr/local/opt/libffi/lib"
export CPPFLAGS="-I/usr/local/opt/libffi/include"

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# alias t='npm run test-no-cov -- --reporter progress'
# alias lint='npm run lint'
# alias lint-errors='npm run lint -- --quiet'
# alias lint-fix='npm run lint -- --fix'
#alias opencoverage='open coverage/lcov-report/index.html'

# Checkout master, fetch everything, cleanup merged branches
# (note that checkout may fail - so we *attempt* to checkout master, then pull the current branch.)
#alias gittidy='git fetch --prune && git checkout master && git pull origin $(git rev-parse --abbrev-ref HEAD) && git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d && git branch --list && git status'

#alias rmd='pbpaste | reformat-markdown-table | pbcopy'
#alias rmorig='find . -name *.orig -delete'

#alias gitlog='git log --graph --all --decorate --pretty=oneline -n 8 | cat'
alias gs='git status'
#alias gt='gss && gittidy && gsp'
#alias gp='git push -u origin HEAD'
alias gaa='git add --all ; gs'
alias gss='git stash save'
alias gsp='git stash pop ; gs'
alias g='git'
alias gc='git commit'
alias gdy='git difftool -y'
alias gmy='git mergetool -y'
#alias grc='git rebase --continue'
alias gmty='git mergetool -y'
#alias gk='git checkout'
#alias gkm='git checkout master'

#alias gdt='gradle downloadTranslations'

#alias fca='gs && git add --all && echo ":wq" | git commit --amend'
alias gcamend='gs && echo ":wq" | git commit --amend && gs'
alias k='kubectl'


#zstyle ':completion:*:*:git:*' script ~/git-completion.bash
#fpath=(~/.zsh $fpath)

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
setopt PROMPT_SUBST
PROMPT='%9c%{%F{green}%}$(parse_git_branch)%{%F{none}%} $ '
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
