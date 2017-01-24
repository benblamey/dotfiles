gitlog=git log -n 4 --pretty=oneline --decorate --graph
gs=git status

# Ansible settings
ANSIBLE=/cygdrive/c/work/code/3rd_Ben/ansible
export PATH=$PATH:$ANSIBLE/bin
export PYTHONPATH=$ANSIBLE/lib
export ANSIBLE_LIBRARY=$ANSIBLE/library