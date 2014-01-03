## Rails Installer

A basic shell script for installing Ruby & Rails on Ubuntu & derivates

* Tested and compatible with Ubuntu 13.10, 13.04, 12.10, 12.04, 11.10, Linux Mint 16, 15, 14, 13
* Installs the prerequisite Ubuntu packages, including Git
* Lets you choose which Ruby version to install
* Downloads and compiles Ruby 1.9.3 or Ruby 2.1.0 (by user's choice)
* Updates rubygems to the latest version
* Installs the latest versions of rake, bundler and Rails
* Distributed under the MIT license

## Installation

### With `curl`
```sh
curl -LO https://github.com/tarakanbg/railsinstaller/raw/master/ruby.sh && bash ruby.sh
```

### With `wget`
```sh
wget --no-check-certificate https://github.com/tarakanbg/railsinstaller/raw/master/ruby.sh && bash ruby.sh
```

### With `git`

```sh
git clone git://github.com/tarakanbg/railsinstaller.git
cd railsinstaller
./ruby.sh
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Changelog

[Read here](https://github.com/tarakanbg/railsinstaller/blob/master/CHANGELOG.md)

## Credits

Copyright © 2014 [Svilen Vassilev](http://svilen.rubystudio.net)

*If you find my work useful or time-saving, you can endorse it or buy me a cup of coffee:*

[![endorse](http://api.coderwall.com/svilenv/endorsecount.png)](http://coderwall.com/svilenv)
[![Donate](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=5FR7AQA4PLD8A)

Released under the [MIT LICENSE](https://github.com/tarakanbg/railsinstaller/blob/master/LICENSE)
