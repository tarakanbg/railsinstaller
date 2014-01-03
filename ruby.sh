# RailsInstaller shell script for installing Ruby & Rails on Ubuntu systems
# by Svilen Vassilev, rubystudio.net
# read LICENSE file for details

#Ask for user details to be used by Git
echo "Please enter your email (to be used for configuring Git): "
echo "(Leave blank if Git already installed)"
read input_email
echo "Please enter your first and last names (to be used for configuring Git): "
echo "(Leave blank if Git already installed)"
read input_first_name input_last_name

# Install the requisite Ubuntu packages
sudo apt-get install -y git-core wget curl gcc checkinstall libxml2-dev libxslt-dev sqlite3 libsqlite3-dev libcurl4-openssl-dev libc6-dev libssl-dev libmysql++-dev make build-essential zlib1g-dev libicu-dev redis-server nodejs openssh-server libreadline-dev libyaml-0-2 libyaml-dev libncurses5-dev zlib1g-dev libgdbm-dev 

# Configure Git
git config --global user.email $input_email
git config --global user.name "$input_first_name $input_last_name"

echo ""
echo "________________________________________"
echo ""
echo ">>  SELECT A RUBY VERSION TO INSTALL  <<"
echo "________________________________________"
echo ""

# Choose Ruby version to download and compile
PS3='Please enter your desired Ruby version: '
options=("Ruby 1.9.3" "Ruby 2.1.0" "Quit")
select opt in "${options[@]}"
do
  case $opt in
    "Ruby 1.9.3")
      echo ""
      echo "You chose Ruby 1.9.3! Installing...."
      echo ""
      # Download and install Ruby 1.9.3
      wget http://cache.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p484.tar.gz
      tar xfvz ruby-1.9.3-p484.tar.gz
      cd ruby-1.9.3-p484
      ./configure
      sudo make
      sudo make install

      # Return to initial directory
      cd ..

      # Delete leftovers
      sudo rm -rf ruby-1.9.3-p484
      rm ruby-1.9.3-p484.tar.gz
      rm ruby.sh
      break
      ;;

    "Ruby 2.1.0")
      echo ""
      echo "You chose Ruby 2.1.0! Installing..."
      echo ""
      # Download and install Ruby 2.0.0
      wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.0.tar.gz
      tar xfvz ruby-2.1.0.tar.gz
      cd ruby-2.1.0
      ./configure
      sudo make
      sudo make install

      # Return to initial directory
      cd ..

      # Delete leftovers
      sudo rm -rf ruby-2.1.0
      rm ruby-2.1.0.tar.gz
      rm ruby.sh
      break
      ;;

    "Quit")
      break
      ;;
    *) echo invalid option;;
  esac
done


# Update rubygems
sudo gem update --system

# Workaround Ubuntu & Rubygems pemissions bug
sudo chmod -R 777 /usr/local/lib/ruby/gems/

# Install rake and rails
sudo gem install rake bundler rails --no-ri --no-rdoc

# Say goodbye
echo ""
echo "Ruby and Rails successfully installed! Happy coding!"
