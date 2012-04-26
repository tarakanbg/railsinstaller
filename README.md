## Rails Installer

A basic shell script for installing Ruby & Rails on Ubuntu

* Tested and compatible with Ubuntu 12.04, 11.10
* Installs the prerequisite Ubuntu packages
* Downloads and compiles Ruby 1.9.3
* Updates rubygems to the latest version
* Installs the latest versions of rake and Rails
* Distributed under the MIT licence

## Usage

### Installing via wget/curl

wget https://github.com/tarakanbg/railsinstaller/zipball/master  
tar xfvz master  
cd master/tarakanbg-railsinstaller-[commit_id]  
chmod +x ruby.sh    
./ruby.sh    

### Installing via git

git clone git://github.com/tarakanbg/railsinstaller.git  
cd railsinstaller    
./ruby.sh    
