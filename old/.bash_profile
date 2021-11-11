if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi


# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
#PATH="/Users/benblamey/.rvm/gems/ruby-2.3.1/bin:/Library/Frameworks/Python.framework/Versions/2.7/bin:~/gradle-3.4.1/bin:${PATH}"


#export PATH

source ~/.profile
#source ~/.m2h_chef_config

# Add HomeBrew to path
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Haskell?
export PATH=/Users/benblamey/.local/bin:$PATH# added by Anaconda3 2019.07 installer

# Needed for ansible etc.
alias ansible=/Users/benblamey/Library/Python/3.7/bin/ansible
alias ansible-playbook=/Users/benblamey/Library/Python/3.7/bin/ansible-playbook

#  BB: comment out all this... leave python as it is...

# # >>> conda init >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
# # . "/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
#         CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda init <<<

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/benblamey/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/benblamey/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/benblamey/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/benblamey/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# # <<< conda initialize <<<

alias pyconda='~/anaconda3/bin/python3'
alias conda='~/anaconda3/bin/conda'

alias ping_subnet='for i in $(seq 1 255); do ping -c1 -t 1 192.168.1.$i; done | grep from'
