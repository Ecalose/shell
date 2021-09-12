#!/bin/bash
apt install curl wget zsh git sudo -y
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone	
echo '啊'
#sh <(curl -fsSL https://get.docker.com)
#echo net.core.default_qdisc=fq >> /etc/sysctl.conf
#echo net.ipv4.tcp_congestion_control=bbr >> /etc/sysctl.conf
echo '这'
y | sh <(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)
echo '错'
sed -i "s/robbyrussell/agnoster/g" ~/.zshrc
echo '了'
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i "s/plugins=(git/plugins=(git zsh-autosuggestions git-open zsh-syntax-highlighting/g" ~/.zshrc
source ~/.zshrc
chsh -s /bin/zsh
