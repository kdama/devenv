set -e

yum -y update

# Git
yum -y install git

# Node
curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
yum -y install nodejs

# Yarn
wget https://dl.yarnpkg.com/rpm/yarn.repo -O /etc/yum.repos.d/yarn.repo
yum -y install yarn

# ioservice-app e2e
yum -y install firefox xorg-x11-server-Xvfb

# Go
curl https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz | tar -C /usr/local -xz
if (! test -e /etc/profile) || (! cat /etc/profile | grep -sqE "^export PATH=\$PATH:/usr/local/go/bin$"); then
  echo "export PATH=\$PATH:/usr/local/go/bin" >> /etc/profile
fi

# zsh
yum -y install zsh
if (! test -e /etc/shells) || (! cat /etc/shells | grep -sqE "^/usr/bin/zsh$"); then
  echo "/usr/bin/zsh" >> /etc/shells
fi

# sshd_config
if (! test -e /etc/ssh/sshd_config) || (! cat /etc/ssh/sshd_config | grep -sqE "^ClientAliveInterval 300$"); then
  echo "ClientAliveInterval 300" >> /etc/ssh/sshd_config
fi
if (! test -e /etc/ssh/sshd_config) || (! cat /etc/ssh/sshd_config | grep -sqE "^ClientAliveCountMax 0$"); then
  echo "ClientAliveCountMax 0" >> /etc/ssh/sshd_config
fi

# java
yum -y install java
