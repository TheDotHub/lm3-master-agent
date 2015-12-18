
#CHECK IF TARBALL EXISTS

#IF DOES NOT EXIST THEN DOWNLOAD
#ELSE CONTINUE

# CHECK IF IS ALREADY INSTALLED
# IF NOT INSTALL
# ELSE PRINT MESSAGE


wget --quiet https://s3.amazonaws.com/pe-builds/released/2015.3.0/puppet-enterprise-2015.3.0-el-6-x86_64.tar.gz


#rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm
#yum install puppetserver -y