if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Users/benblamey/.rvm/gems/ruby-2.3.1/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:~/gradle-2.14.1/bin:${PATH}"


export PATH

source ~/.profile
source ~/.m2h_chef_config
