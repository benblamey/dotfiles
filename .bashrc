export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home"

source ~/.profile

alias git=hub

# Aliases from David
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias t='npm run test-no-cov -- --reporter progress'

alias lint='npm run lint'
alias lint-errors='npm run lint -- --quiet'
alias lint-fix='npm run lint -- --fix'

alias opencoverage='open coverage/lcov-report/index.html'

#alias reinstall_node_modules="rm -rf node_modules && npm i && npm i && npm i"


# My aliases
# Checkout master, fetch everything, cleanup merged branches
alias gittidy='git fetch --prune && git checkout master && git pull && git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d && git branch --list && git status'
alias rmd='pbpaste | reformat-markdown-table | pbcopy'
alias rmorig='find . -name *.orig -delete'
alias gitlog='git log --graph --all --decorate --pretty=oneline -n 8 | cat'
alias gs='git status'
alias gt='gittidy'
alias gp='git push -u origin HEAD'

alias fca='git add --all && echo ":wq" | git commit --amend'

source ~/git-completion.bash


alias upd-npm-deps="npm outdated --long | grep dependencies | cut -d ' ' -f 1 | xargs -L1 -I pkgname sh -c 'npm remove --save pkgname ; npm install --save pkgname'"
alias upd-npm-deps-dev="npm outdated --long | grep devDependencies | cut -d ' ' -f 1 | xargs -L1 -I pkgname sh -c 'npm remove --save-dev pkgname ; npm install --save-dev pkgname'"
alias upd-npm-deps-all="upd-npm-deps; upd-npm-deps-dev"

export NVM_DIR="/Users/benblamey/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "


#alias gitrebaseandforcepush="git pull --rebase origin master && git push -f origin `git rev-parse --abbrev-ref HEAD`"



#cd ~/projects
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/benblamey/.sdkman"
[[ -s "/Users/benblamey/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/benblamey/.sdkman/bin/sdkman-init.sh"


# if starting shell inside git dir (e.g. IntelliJ), pull and prune
gittidy