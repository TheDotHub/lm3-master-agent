
#CHECK IF TARBALL EXISTS

#IF DOES NOT EXIST THEN DOWNLOAD
#ELSE CONTINUE

if [ ! -f "/home/vagrant/puppet-enterprise-2015.3.0-el-6-x86_64.tar.gz" ]; then
  wget https://s3.amazonaws.com/pe-builds/released/2015.3.0/puppet-enterprise-2015.3.0-el-6-x86_64.tar.gz
else echo "Already downloaded"
fi

# CHECK IF IS ALREADY INSTALLED
# IF NOT INSTALL
# ELSE PRINT MESSAGE

# /opt/puppetlabs/bin/puppet ??
if [ ! -f "/usr/local/bin/puppet" ] ; then
  echo "Installing Puppet Enterprise"
  sudo tar -zxvf /home/vagrant/puppet-enterprise-2015.3.0-el-6-x86_64.tar.gz
  cd /home/vagrant/puppet-enterprise-2015.3.0-el-6-x86_64 && ./puppet-enterprise-installer -a /vagrant/scripts/master.server.answers
else echo "Already installed"
fi

#wget --quiet https://s3.amazonaws.com/pe-builds/released/2015.3.0/puppet-enterprise-2015.3.0-el-6-x86_64.tar.gz


#rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm
#yum install puppetserver -y
