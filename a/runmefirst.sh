sudo apt-get update
#sudo apt-get -y install tmux
#sudo apt-get -y install elinks
#sudo apt-get -y install w3m
sudo apt-get -y install urlview
#sudo apt-get -y install emacs
#
#cat >> $HOME/.bashrc <<NICE
#export PS1='% '
#NICE
#
#source $HOME/.bashrc

mkdir -p ~/.mutt
cp /etc/Muttrc.d/colors.rc ~/.mutt
cp /etc/mailcap ~/.mailcap


#cat >> $HOME/.muttrc <<EOF
#auto_view text/html
#alternative_order text/plain text text/enriched text/html
#EOF


git clone https://github.com/stolk/imcat.git # CLI image viewer

npm install http-server -g // http-server -o <DIR>
