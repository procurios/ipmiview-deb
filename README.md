
ipmiview-deb
=============

Build scripts to easily create a amd64 `.deb` package for [Super Micro IPMIView](http://www.supermicro.nl/solutions/SMS_IPMI.cfm).
32 bit is not supported but should be trivial to add. Tested on Ubuntu trusty and wily probably works on Debian too.

The created package provides:

 * Desktop shortcut (makes 'Super Micro IPMIView' appear in your desktop menu)
 * `ipmiview` cli command, starts the IPMIView application
 * `ikvm` cli command, to start a KVM session without using the IPMIView application.
 
 Usage: `ikvm <ip> <username> <password>`

Dependencies
------------

You will need the `devscripts` and the `debhelper` packages installed in order to build the Super Micro IPMIView `.deb` file:

```sh
apt-get install devscripts debhelper
```


Building
--------

* Download the `.tar.gz` file from [Super Micro IPMIView FTP site](ftp://ftp.supermicro.com/utility/IPMIView/Linux/) and place it in the root directory of this repo.

* Create a new debian/changelog file using the provided update.sh script:
```sh
./update.sh
```

* Build the package with the following command:

```sh
debuild -us -uc -b
```

* Please 'Star' or 'Watch' the repo on github: https://github.com/procurios/ipmiview-deb/stargazers

Installing
----------

Install the package with the `dpkg` command:

```sh
dpkg -i PhpStorm...
```

Alternatively, you can create your own [simple repo](https://wiki.debian.org/DebianRepository/HowTo/TrivialRepository) or 
[more professional one](https://wiki.debian.org/SettingUpSignedAptRepositoryWithReprepro) to host your custom `deb` packages.
