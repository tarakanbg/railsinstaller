# RailsInstaller shell script for installing Ruby & Rails on Ubuntu systems
# by Svilen Vassilev, rubystudio.net
# read LICENSE file for details

#Ask for user details to be used by Git
echo "Please enter your email (to be used for configuring Git): "
read input_email
echo "Please enter your first and last names (to be used for configuring Git): "
read input_first_name input_last_name

# Install the requisite Ubuntu packages
sudo apt-get install -y git-core wget curl gcc checkinstall libxml2-dev libxslt-dev sqlite3 libsqlite3-dev libcurl4-openssl-dev libc6-dev libssl-dev libmysql++-dev make build-essential zlib1g-dev libicu-dev redis-server nodejs openssh-server libreadline-dev

# Configure Git
git config --global user.email $input_email
git config --global user.name "$input_first_name $input_last_name"

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

