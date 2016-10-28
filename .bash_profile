if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

PATH="~/gradle-2.14.1/bin:${PATH}"


export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/benblamey/.sdkman"
[[ -s "/Users/benblamey/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/benblamey/.sdkman/bin/sdkman-init.sh"
