# RailsInstaller shell script for installing Ruby & Rails on Ubuntu systems
# by Svilen Vassilev, rubystudio.net
# read LICENCE file for details


# Install the requisite Ubuntu packages
sudo apt-get install -y git-core wget curl gcc checkinstall libxml2-dev libxslt-dev sqlite3 libsqlite3-dev libcurl4-openssl-dev libc6-dev libssl-dev libmysql++-dev make build-essential zlib1g-dev libicu-dev redis-server nodejs openssh-server libreadline-dev

# Configure Git
git config --global user.email "admin@local.host"
git config --global user.name "Admin User"

# Download and install Ruby 1.9.2
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.2-p290.tar.gz
tar xfvz ruby-1.9.2-p290.tar.gz
cd ruby-1.9.2-p290
./configure
make
sudo make install

# Update rubygems
sudo gem update --system

# Instal rake and rails
sudo gem install rake
sudo gem install rails

# Return to user home directory
cd ~

