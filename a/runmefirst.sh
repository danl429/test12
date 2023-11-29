sudo apt-get update
sudo apt-get -y install tmux
sudo apt-get -y install emacs

cat >> $HOME/.bashrc <<NICE
export PS1='% '
NICE

source $HOME/.bashrc
