## Rails Installer

A basic shell script for installing Ruby & Rails on Ubuntu & derivates

* Tested and compatible with Ubuntu 12.04, 11.10, Linux Mint 13
* Installs the prerequisite Ubuntu packages
* Downloads and compiles Ruby 1.9.3
* Updates rubygems to the latest version
* Installs the latest versions of rake and Rails
* Distributed under the MIT license

## Usage

### Installing via wget/curl
```sh
# via `curl`
curl -L https://github.com/tarakanbg/railsinstaller/raw/master/ruby.sh > ruby.sh; chmod +x ruby.sh; ./ruby.sh; rm ruby.sh

# via `wget`
wget --no-check-certificate https://github.com/tarakanbg/railsinstaller/raw/master/ruby.sh -O - > ruby.sh; chmod +x ruby.sh; ./ruby.sh; rm ruby.sh
```
### Installing via git

```sh
git clone git://github.com/tarakanbg/railsinstaller.git
cd railsinstaller
./ruby.sh
```

curl -LO https://github.com/tarakanbg/railsinstaller/raw/master/ruby.sh && bash ruby.sh
wget --no-check-certificate -O https://github.com/tarakanbg/railsinstaller/raw/master/ruby.sh && bash ruby.sh
