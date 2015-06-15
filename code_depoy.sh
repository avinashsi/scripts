[root@ip-172-31-12-192 opt]# gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
gpg: keyring `/root/.gnupg/secring.gpg' created
gpg: requesting key D39DC0E3 from hkp server keys.gnupg.net
gpg: /root/.gnupg/trustdb.gpg: trustdb created
gpg: key D39DC0E3: public key "Michal Papis (RVM signing) <mpapis@gmail.com>" imported
gpg: no ultimately trusted keys found
gpg: Total number processed: 1
gpg:               imported: 1  (RSA: 1)

# curl -L get.rvm.io | bash -s stable
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 22721  100 22721    0     0  65449      0 --:--:-- --:--:-- --:--:-- 65449
Downloading https://github.com/rvm/rvm/archive/1.26.11.tar.gz
Downloading https://github.com/rvm/rvm/releases/download/1.26.11/1.26.11.tar.gz.asc
gpg: Signature made Mon Mar 30 21:52:13 2015 UTC using RSA key ID BF04FF17
gpg: Good signature from "Michal Papis (RVM signing) <mpapis@gmail.com>"
gpg: WARNING: This key is not certified with a trusted signature!
gpg:          There is no indication that the signature belongs to the owner.
Primary key fingerprint: 409B 6B17 96C2 7546 2A17  0311 3804 BB82 D39D C0E3
     Subkey fingerprint: 62C9 E5F4 DA30 0D94 AC36  166B E206 C29F BF04 FF17
GPG verified '/usr/local/rvm/archives/rvm-1.26.11.tgz'
Creating group 'rvm'

Installing RVM to /usr/local/rvm/
Installation of RVM in /usr/local/rvm/ is almost complete:

  * First you need to add all users that will be using rvm to 'rvm' group,
    and logout - login again, anyone using rvm will be operating with `umask u=rwx,g=rwx,o=rx`.

  * To start using RVM you need to run `source /etc/profile.d/rvm.sh`
    in all your open shell windows, in rare cases you need to reopen all shell windows.

# Administrator,
#
#   Thank you for using RVM!
#   We sincerely hope that RVM helps to make your life easier and more enjoyable!!!
#
# ~Wayne, Michal & team.

In case of problems: http://rvm.io/help and https://twitter.com/rvm_io
# source /etc/profile.d/rvm.sh
# rvm install 2.1.2
Searching for binary rubies, this might take some time.
Found remote file https://rvm_io.global.ssl.fastly.net/binaries/centos/6/x86_64/ruby-2.1.2.tar.bz2
Checking requirements for centos.
Installing requirements for centos.
Installing required packages: sqlite-devel....
Requirements installation successful.
ruby-2.1.2 - #configure
ruby-2.1.2 - #download
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 19.6M  100 19.6M    0     0  5898k      0  0:00:03  0:00:03 --:--:-- 6131k
ruby-2.1.2 - #validate archive
ruby-2.1.2 - #extract
ruby-2.1.2 - #validate binary
ruby-2.1.2 - #setup
ruby-2.1.2 - #gemset created /usr/local/rvm/gems/ruby-2.1.2@global
ruby-2.1.2 - #importing gemset /usr/local/rvm/gemsets/global.gems....................................
ruby-2.1.2 - #generating global wrappers........
ruby-2.1.2 - #gemset created /usr/local/rvm/gems/ruby-2.1.2
ruby-2.1.2 - #importing gemsetfile /usr/local/rvm/gemsets/default.gems evaluated to empty gem list
ruby-2.1.2 - #generating default wrappers........
#rvm use 2.1.2 --default
Using /usr/local/rvm/gems/ruby-2.1.2
#ruby --version
ruby 2.1.2p95 (2014-05-08 revision 45877) [x86_64-linux]

#rvm uninstall all    //This didn't worked -------


#cat /etc/yum.repos.d/amzn-main.repo

[amzn-main]
name=amzn-main-Base
#mirrorlist=http://repo.$awsregion.$awsdomain/$releasever/main/mirror.list
mirrorlist=http://repo.us-west-2.amazonaws.com/latest/main/mirror.list
mirror_expire=300
metadata_expire=300
priority=10
failovermethod=priority
fastestmirror_enabled=0
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga
enabled=1
retries=5
timeout=10
report_instanceid=yes

[amzn-main-debuginfo]
name=amzn-main-debuginfo
#mirrorlist=http://repo.$awsregion.$awsdomain/$releasever/main/debuginfo/mirror.list
mirrorlist=http://repo.us-west-2.amazonaws.com/latest/main/mirror.list
mirror_expire=300
metadata_expire=300
priority=10
failovermethod=priority
fastestmirror_enabled=0
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga
enabled=0
retries=5
timeout=10
report_instanceid=yes




# yum install ruby
Loaded plugins: security
Setting up Install Process
Resolving Dependencies
--> Running transaction check
---> Package ruby.noarch 1:2.0-0.3.amzn1 will be installed
--> Processing Dependency: ruby20 for package: 1:ruby-2.0-0.3.amzn1.noarch
--> Running transaction check
---> Package ruby20.x86_64 0:2.0.0.643-1.21.amzn1 will be installed
--> Processing Dependency: ruby20-libs(x86-64) = 2.0.0.643-1.21.amzn1 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: ruby20(rubygems) >= 2.0.14 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: rubygem20(bigdecimal) >= 1.2.0 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: rubygem20(json) >= 1.7.7 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: rubygem20(psych) >= 2.0.0 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: libruby.so.2.0()(64bit) for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Running transaction check
---> Package ruby20-libs.x86_64 0:2.0.0.643-1.21.amzn1 will be installed
--> Processing Dependency: libc.so.6(GLIBC_2.14)(64bit) for package: ruby20-libs-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: libffi.so.6()(64bit) for package: ruby20-libs-2.0.0.643-1.21.amzn1.x86_64
---> Package rubygem20-bigdecimal.x86_64 0:1.2.0-1.21.amzn1 will be installed
---> Package rubygem20-json.x86_64 0:1.8.2-1.39.amzn1 will be installed
---> Package rubygem20-psych.x86_64 0:2.0.0-1.21.amzn1 will be installed
---> Package rubygems20.noarch 0:2.0.14-1.21.amzn1 will be installed
--> Processing Dependency: rubygem20(rdoc) >= 4.0.0 for package: rubygems20-2.0.14-1.21.amzn1.noarch
--> Running transaction check
---> Package glibc.x86_64 0:2.12-1.132.el6_5.3 will be updated
--> Processing Dependency: glibc = 2.12-1.132.el6_5.3 for package: glibc-devel-2.12-1.132.el6_5.3.x86_64
--> Processing Dependency: glibc = 2.12-1.132.el6_5.3 for package: glibc-common-2.12-1.132.el6_5.3.x86_64
--> Processing Dependency: glibc = 2.12-1.132.el6_5.3 for package: glibc-headers-2.12-1.132.el6_5.3.x86_64
---> Package glibc.x86_64 0:2.17-55.140.amzn1 will be an update
--> Processing Dependency: nss-softokn-freebl(x86-64) >= 3.16.2.3 for package: glibc-2.17-55.140.amzn1.x86_64
---> Package libffi.x86_64 0:3.0.5-3.2.el6 will be updated
--> Processing Dependency: libffi.so.5()(64bit) for package: python-libs-2.6.6-52.el6.x86_64
--> Processing Dependency: libffi.so.5()(64bit) for package: libffi-devel-3.0.5-3.2.el6.x86_64
--> Processing Dependency: libffi = 3.0.5-3.2.el6 for package: libffi-devel-3.0.5-3.2.el6.x86_64
---> Package libffi.x86_64 0:3.0.13-11.4.amzn1 will be an update
---> Package rubygem20-rdoc.noarch 0:4.1.0-1.28.amzn1 will be installed
--> Processing Dependency: ruby20(irb) for package: rubygem20-rdoc-4.1.0-1.28.amzn1.noarch
--> Running transaction check
---> Package compat-libffi5.x86_64 0:3.0.5-3.2.3.amzn1 will be installed
---> Package glibc-common.x86_64 0:2.12-1.132.el6_5.3 will be updated
---> Package glibc-common.x86_64 0:2.17-55.140.amzn1 will be an update
---> Package glibc-devel.x86_64 0:2.12-1.132.el6_5.3 will be updated
---> Package glibc-devel.x86_64 0:2.17-55.140.amzn1 will be an update
---> Package glibc-headers.x86_64 0:2.12-1.132.el6_5.3 will be updated
---> Package glibc-headers.x86_64 0:2.17-55.140.amzn1 will be an update
---> Package libffi-devel.x86_64 0:3.0.5-3.2.el6 will be updated
---> Package libffi-devel.x86_64 0:3.0.13-11.4.amzn1 will be an update
---> Package nss-softokn-freebl.x86_64 0:3.14.3-10.el6_5 will be updated
---> Package nss-softokn-freebl.x86_64 0:3.16.2.3-1.13.amzn1 will be an update
---> Package ruby20-irb.noarch 0:2.0.0.643-1.21.amzn1 will be installed
--> Processing Conflict: glibc-2.17-55.140.amzn1.x86_64 conflicts kernel < 2.6.35
--> Finished Dependency Resolution
Error: glibc conflicts with kernel-2.6.32-431.23.3.el6.centos.plus.x86_64
 You could try using --skip-broken to work around the problem
** Found 1 pre-existing rpmdb problem(s), 'yum check' output follows:
yum-3.2.29-43.el6.centos.noarch has missing requires of yum-plugin-fastestmirror
## yum downgrade glibc
Loaded plugins: security
Setting up Downgrade Process
amzn-main                                                                                                                                                                     | 2.1 kB     00:00
rightscale-epel                                                                                                                                                               | 2.9 kB     00:00
Only Upgrade available on package: glibc-2.12-1.149.el6.x86_64
Nothing to do
## yum update kernel-2.6.32-431.23.3.el6.centos.plus.x86_64
Loaded plugins: security
Setting up Update Process
Resolving Dependencies
--> Running transaction check
---> Package kernel.x86_64 0:3.14.35-28.38.amzn1 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

=====================================================================================================================================================================================================
 Package                                    Arch                                       Version                                                   Repository                                     Size
=====================================================================================================================================================================================================
Installing:
 kernel                                     x86_64                                     3.14.35-28.38.amzn1                                       amzn-main                                      16 M

Transaction Summary
=====================================================================================================================================================================================================
Install       1 Package(s)

Total download size: 16 M
Installed size: 67 M
Is this ok [y/N]: y
Downloading Packages:
kernel-3.14.35-28.38.amzn1.x86_64.rpm                                                                                                                                         |  16 MB     00:00
warning: rpmts_HdrFromFdno: Header V3 RSA/SHA256 Signature, key ID 21c0f39f: NOKEY
Retrieving key from file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga


GPG key retrieval failed: [Errno 14] Could not open/read file:///etc/pki/rpm-gpg/RPM-GPG-KEY-amazon-ga
## vi amzn-main.repo
## vi amzn-main.repo
## yum update kernel-2.6.32-431.23.3.el6.centos.plus.x86_64
Loaded plugins: security
amzn-main                                                                                                                                                                     | 2.1 kB     00:00
rightscale-epel                                                                                                                                                               | 2.9 kB     00:00
Setting up Update Process
Resolving Dependencies
--> Running transaction check
---> Package kernel.x86_64 0:3.14.35-28.38.amzn1 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

=====================================================================================================================================================================================================
 Package                                    Arch                                       Version                                                   Repository                                     Size
=====================================================================================================================================================================================================
Installing:
 kernel                                     x86_64                                     3.14.35-28.38.amzn1                                       amzn-main                                      16 M

Transaction Summary
=====================================================================================================================================================================================================
Install       1 Package(s)

Total size: 16 M
Installed size: 67 M
Is this ok [y/N]: y
Downloading Packages:
Running rpm_check_debug
Running Transaction Test
Transaction Test Succeeded
Running Transaction
  Installing : kernel-3.14.35-28.38.amzn1.x86_64                                                                                                                                                 1/1

  Verifying  : kernel-3.14.35-28.38.amzn1.x86_64                                                                                                                                                 1/1

Installed:
  kernel.x86_64 0:3.14.35-28.38.amzn1

Complete!
#
# uname -r
2.6.32-431.23.3.el6.centos.plus.x86_64
# reboot

Broadcast message from root@ip-172-31-12-192
        (/dev/pts/0) at 9:25 ...

The system is going down for reboot NOW!
login as: root
Authenticating with public key "imported-openssh-key"
Last login: Mon Jun 15 06:56:39 2015 from 111.93.121.106
     ___   _        __   __   ____            __
    / _ \ (_)___ _ / /  / /_ / __/____ ___ _ / /___
   / , _// // _ `// _ \/ __/_\ \ / __// _ `// // -_)
  /_/|_|/_/ \_, //_//_/\__//___/ \__/ \_,_//_/ \__/
           /___/

Welcome to a virtual machine image brought to you by RightScale!


# uname -r
3.14.35-28.38.amzn1.x86_64
# yum install ruby
Loaded plugins: security
rightscale-epel                                                                                                                                                               | 2.9 kB     00:00
Setting up Install Process
Resolving Dependencies
--> Running transaction check
---> Package ruby.noarch 1:2.0-0.3.amzn1 will be installed
--> Processing Dependency: ruby20 for package: 1:ruby-2.0-0.3.amzn1.noarch
--> Running transaction check
---> Package ruby20.x86_64 0:2.0.0.643-1.21.amzn1 will be installed
--> Processing Dependency: ruby20-libs(x86-64) = 2.0.0.643-1.21.amzn1 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: ruby20(rubygems) >= 2.0.14 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: rubygem20(bigdecimal) >= 1.2.0 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: rubygem20(json) >= 1.7.7 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: rubygem20(psych) >= 2.0.0 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: libruby.so.2.0()(64bit) for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Running transaction check
---> Package ruby20-libs.x86_64 0:2.0.0.643-1.21.amzn1 will be installed
--> Processing Dependency: libc.so.6(GLIBC_2.14)(64bit) for package: ruby20-libs-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: libffi.so.6()(64bit) for package: ruby20-libs-2.0.0.643-1.21.amzn1.x86_64
---> Package rubygem20-bigdecimal.x86_64 0:1.2.0-1.21.amzn1 will be installed
---> Package rubygem20-json.x86_64 0:1.8.2-1.39.amzn1 will be installed
---> Package rubygem20-psych.x86_64 0:2.0.0-1.21.amzn1 will be installed
---> Package rubygems20.noarch 0:2.0.14-1.21.amzn1 will be installed
--> Processing Dependency: rubygem20(rdoc) >= 4.0.0 for package: rubygems20-2.0.14-1.21.amzn1.noarch
--> Running transaction check
---> Package glibc.x86_64 0:2.12-1.132.el6_5.3 will be updated
--> Processing Dependency: glibc = 2.12-1.132.el6_5.3 for package: glibc-devel-2.12-1.132.el6_5.3.x86_64
--> Processing Dependency: glibc = 2.12-1.132.el6_5.3 for package: glibc-common-2.12-1.132.el6_5.3.x86_64
--> Processing Dependency: glibc = 2.12-1.132.el6_5.3 for package: glibc-headers-2.12-1.132.el6_5.3.x86_64
---> Package glibc.x86_64 0:2.17-55.140.amzn1 will be an update
--> Processing Dependency: nss-softokn-freebl(x86-64) >= 3.16.2.3 for package: glibc-2.17-55.140.amzn1.x86_64
---> Package libffi.x86_64 0:3.0.5-3.2.el6 will be updated
--> Processing Dependency: libffi.so.5()(64bit) for package: python-libs-2.6.6-52.el6.x86_64
--> Processing Dependency: libffi.so.5()(64bit) for package: libffi-devel-3.0.5-3.2.el6.x86_64
--> Processing Dependency: libffi = 3.0.5-3.2.el6 for package: libffi-devel-3.0.5-3.2.el6.x86_64
---> Package libffi.x86_64 0:3.0.13-11.4.amzn1 will be an update
---> Package rubygem20-rdoc.noarch 0:4.1.0-1.28.amzn1 will be installed
--> Processing Dependency: ruby20(irb) for package: rubygem20-rdoc-4.1.0-1.28.amzn1.noarch
--> Running transaction check
---> Package compat-libffi5.x86_64 0:3.0.5-3.2.3.amzn1 will be installed
---> Package glibc-common.x86_64 0:2.12-1.132.el6_5.3 will be updated
---> Package glibc-common.x86_64 0:2.17-55.140.amzn1 will be an update
---> Package glibc-devel.x86_64 0:2.12-1.132.el6_5.3 will be updated
---> Package glibc-devel.x86_64 0:2.17-55.140.amzn1 will be an update
---> Package glibc-headers.x86_64 0:2.12-1.132.el6_5.3 will be updated
---> Package glibc-headers.x86_64 0:2.17-55.140.amzn1 will be an update
---> Package libffi-devel.x86_64 0:3.0.5-3.2.el6 will be updated
---> Package libffi-devel.x86_64 0:3.0.13-11.4.amzn1 will be an update
---> Package nss-softokn-freebl.x86_64 0:3.14.3-10.el6_5 will be updated
---> Package nss-softokn-freebl.x86_64 0:3.16.2.3-1.13.amzn1 will be an update
---> Package ruby20-irb.noarch 0:2.0.0.643-1.21.amzn1 will be installed
--> Processing Conflict: glibc-2.17-55.140.amzn1.x86_64 conflicts kernel < 2.6.35
--> Finished Dependency Resolution
Error: glibc conflicts with kernel-2.6.32-431.23.3.el6.centos.plus.x86_64
 You could try using --skip-broken to work around the problem
** Found 1 pre-existing rpmdb problem(s), 'yum check' output follows:
yum-3.2.29-43.el6.centos.noarch has missing requires of yum-plugin-fastestmirror

# yum remove kernel-2.6.32-431.23.3.el6.centos.plus.x86_64
Loaded plugins: security
Setting up Remove Process
Resolving Dependencies
--> Running transaction check
---> Package kernel.x86_64 0:2.6.32-431.23.3.el6.centos.plus will be erased
--> Finished Dependency Resolution

Dependencies Resolved

=====================================================================================================================================================================================================
 Package                              Arch                                 Version                                                       Repository                                             Size
=====================================================================================================================================================================================================
Removing:
 kernel                               x86_64                               2.6.32-431.23.3.el6.centos.plus                               @centosplus/$releasever                               123 M

Transaction Summary
=====================================================================================================================================================================================================
Remove        1 Package(s)

Installed size: 123 M
Is this ok [y/N]: y
Downloading Packages:
Running rpm_check_debug
Running Transaction Test
Transaction Test Succeeded
Running Transaction
  Erasing    : kernel-2.6.32-431.23.3.el6.centos.plus.x86_64                                                                                                                                     1/1
  Verifying  : kernel-2.6.32-431.23.3.el6.centos.plus.x86_64                                                                                                                                     1/1

Removed:
  kernel.x86_64 0:2.6.32-431.23.3.el6.centos.plus

Complete!
# yum install ruby
Loaded plugins: security
Setting up Install Process
Resolving Dependencies
--> Running transaction check
---> Package ruby.noarch 1:2.0-0.3.amzn1 will be installed
--> Processing Dependency: ruby20 for package: 1:ruby-2.0-0.3.amzn1.noarch
--> Running transaction check
---> Package ruby20.x86_64 0:2.0.0.643-1.21.amzn1 will be installed
--> Processing Dependency: ruby20-libs(x86-64) = 2.0.0.643-1.21.amzn1 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: ruby20(rubygems) >= 2.0.14 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: rubygem20(bigdecimal) >= 1.2.0 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: rubygem20(json) >= 1.7.7 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: rubygem20(psych) >= 2.0.0 for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: libruby.so.2.0()(64bit) for package: ruby20-2.0.0.643-1.21.amzn1.x86_64
--> Running transaction check
---> Package ruby20-libs.x86_64 0:2.0.0.643-1.21.amzn1 will be installed
--> Processing Dependency: libc.so.6(GLIBC_2.14)(64bit) for package: ruby20-libs-2.0.0.643-1.21.amzn1.x86_64
--> Processing Dependency: libffi.so.6()(64bit) for package: ruby20-libs-2.0.0.643-1.21.amzn1.x86_64
---> Package rubygem20-bigdecimal.x86_64 0:1.2.0-1.21.amzn1 will be installed
---> Package rubygem20-json.x86_64 0:1.8.2-1.39.amzn1 will be installed
---> Package rubygem20-psych.x86_64 0:2.0.0-1.21.amzn1 will be installed
---> Package rubygems20.noarch 0:2.0.14-1.21.amzn1 will be installed
--> Processing Dependency: rubygem20(rdoc) >= 4.0.0 for package: rubygems20-2.0.14-1.21.amzn1.noarch
--> Running transaction check
---> Package glibc.x86_64 0:2.12-1.132.el6_5.3 will be updated
--> Processing Dependency: glibc = 2.12-1.132.el6_5.3 for package: glibc-devel-2.12-1.132.el6_5.3.x86_64
--> Processing Dependency: glibc = 2.12-1.132.el6_5.3 for package: glibc-common-2.12-1.132.el6_5.3.x86_64
--> Processing Dependency: glibc = 2.12-1.132.el6_5.3 for package: glibc-headers-2.12-1.132.el6_5.3.x86_64
---> Package glibc.x86_64 0:2.17-55.140.amzn1 will be an update
--> Processing Dependency: nss-softokn-freebl(x86-64) >= 3.16.2.3 for package: glibc-2.17-55.140.amzn1.x86_64
---> Package libffi.x86_64 0:3.0.5-3.2.el6 will be updated
--> Processing Dependency: libffi.so.5()(64bit) for package: python-libs-2.6.6-52.el6.x86_64
--> Processing Dependency: libffi.so.5()(64bit) for package: libffi-devel-3.0.5-3.2.el6.x86_64
--> Processing Dependency: libffi = 3.0.5-3.2.el6 for package: libffi-devel-3.0.5-3.2.el6.x86_64
---> Package libffi.x86_64 0:3.0.13-11.4.amzn1 will be an update
---> Package rubygem20-rdoc.noarch 0:4.1.0-1.28.amzn1 will be installed
--> Processing Dependency: ruby20(irb) for package: rubygem20-rdoc-4.1.0-1.28.amzn1.noarch
--> Running transaction check
---> Package compat-libffi5.x86_64 0:3.0.5-3.2.3.amzn1 will be installed
---> Package glibc-common.x86_64 0:2.12-1.132.el6_5.3 will be updated
---> Package glibc-common.x86_64 0:2.17-55.140.amzn1 will be an update
---> Package glibc-devel.x86_64 0:2.12-1.132.el6_5.3 will be updated
---> Package glibc-devel.x86_64 0:2.17-55.140.amzn1 will be an update
---> Package glibc-headers.x86_64 0:2.12-1.132.el6_5.3 will be updated
---> Package glibc-headers.x86_64 0:2.17-55.140.amzn1 will be an update
---> Package libffi-devel.x86_64 0:3.0.5-3.2.el6 will be updated
---> Package libffi-devel.x86_64 0:3.0.13-11.4.amzn1 will be an update
---> Package nss-softokn-freebl.x86_64 0:3.14.3-10.el6_5 will be updated
---> Package nss-softokn-freebl.x86_64 0:3.16.2.3-1.13.amzn1 will be an update
---> Package ruby20-irb.noarch 0:2.0.0.643-1.21.amzn1 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

=====================================================================================================================================================================================================
 Package                                              Arch                                   Version                                                 Repository                                 Size
=====================================================================================================================================================================================================
Installing:
 ruby                                                 noarch                                 1:2.0-0.3.amzn1                                         amzn-main                                 2.5 k
Installing for dependencies:
 compat-libffi5                                       x86_64                                 3.0.5-3.2.3.amzn1                                       amzn-main                                  27 k
 ruby20                                               x86_64                                 2.0.0.643-1.21.amzn1                                    amzn-main                                  69 k
 ruby20-irb                                           noarch                                 2.0.0.643-1.21.amzn1                                    amzn-main                                  89 k
 ruby20-libs                                          x86_64                                 2.0.0.643-1.21.amzn1                                    amzn-main                                 3.7 M
 rubygem20-bigdecimal                                 x86_64                                 1.2.0-1.21.amzn1                                        amzn-main                                  79 k
 rubygem20-json                                       x86_64                                 1.8.2-1.39.amzn1                                        amzn-main                                  68 k
 rubygem20-psych                                      x86_64                                 2.0.0-1.21.amzn1                                        amzn-main                                  76 k
 rubygem20-rdoc                                       noarch                                 4.1.0-1.28.amzn1                                        amzn-main                                 574 k
 rubygems20                                           noarch                                 2.0.14-1.21.amzn1                                       amzn-main                                 224 k
Updating for dependencies:
 glibc                                                x86_64                                 2.17-55.140.amzn1                                       amzn-main                                 5.7 M
 glibc-common                                         x86_64                                 2.17-55.140.amzn1                                       amzn-main                                  28 M
 glibc-devel                                          x86_64                                 2.17-55.140.amzn1                                       amzn-main                                 1.1 M
 glibc-headers                                        x86_64                                 2.17-55.140.amzn1                                       amzn-main                                 722 k
 libffi                                               x86_64                                 3.0.13-11.4.amzn1                                       amzn-main                                  30 k
 libffi-devel                                         x86_64                                 3.0.13-11.4.amzn1                                       amzn-main                                  23 k
 nss-softokn-freebl                                   x86_64                                 3.16.2.3-1.13.amzn1                                     amzn-main                                 214 k

Transaction Summary
=====================================================================================================================================================================================================
Install      10 Package(s)
Upgrade       7 Package(s)

Total download size: 41 M
Is this ok [y/N]: y
Downloading Packages:
(1/17): compat-libffi5-3.0.5-3.2.3.amzn1.x86_64.rpm                                                                                                                           |  27 kB     00:00
(2/17): glibc-2.17-55.140.amzn1.x86_64.rpm                                                                                                                                    | 5.7 MB     00:00
(3/17): glibc-common-2.17-55.140.amzn1.x86_64.rpm                                                                                                                             |  28 MB     00:00
(4/17): glibc-devel-2.17-55.140.amzn1.x86_64.rpm                                                                                                                              | 1.1 MB     00:00
(5/17): glibc-headers-2.17-55.140.amzn1.x86_64.rpm                                                                                                                            | 722 kB     00:00
(6/17): libffi-3.0.13-11.4.amzn1.x86_64.rpm                                                                                                                                   |  30 kB     00:00
(7/17): libffi-devel-3.0.13-11.4.amzn1.x86_64.rpm                                                                                                                             |  23 kB     00:00
(8/17): nss-softokn-freebl-3.16.2.3-1.13.amzn1.x86_64.rpm                                                                                                                     | 214 kB     00:00
(9/17): ruby-2.0-0.3.amzn1.noarch.rpm                                                                                                                                         | 2.5 kB     00:00
(10/17): ruby20-2.0.0.643-1.21.amzn1.x86_64.rpm                                                                                                                               |  69 kB     00:00
(11/17): ruby20-irb-2.0.0.643-1.21.amzn1.noarch.rpm                                                                                                                           |  89 kB     00:00
(12/17): ruby20-libs-2.0.0.643-1.21.amzn1.x86_64.rpm                                                                                                                          | 3.7 MB     00:00
(13/17): rubygem20-bigdecimal-1.2.0-1.21.amzn1.x86_64.rpm                                                                                                                     |  79 kB     00:00
(14/17): rubygem20-json-1.8.2-1.39.amzn1.x86_64.rpm                                                                                                                           |  68 kB     00:00
(15/17): rubygem20-psych-2.0.0-1.21.amzn1.x86_64.rpm                                                                                                                          |  76 kB     00:00
(16/17): rubygem20-rdoc-4.1.0-1.28.amzn1.noarch.rpm                                                                                                                           | 574 kB     00:00
(17/17): rubygems20-2.0.14-1.21.amzn1.noarch.rpm                                                                                                                              | 224 kB     00:00
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                                 32 MB/s |  41 MB     00:01
Running rpm_check_debug
Running Transaction Test
Transaction Test Succeeded
Running Transaction
  Updating   : glibc-common-2.17-55.140.amzn1.x86_64                                                                                                                                            1/24
  Updating   : glibc-2.17-55.140.amzn1.x86_64                                                                                                                                                   2/24
Stopping crond:                                            [  OK  ]
Starting crond:                                            [  OK  ]
warning: /etc/localtime created as /etc/localtime.rpmnew
warning: /etc/nsswitch.conf created as /etc/nsswitch.conf.rpmnew
  Updating   : nss-softokn-freebl-3.16.2.3-1.13.amzn1.x86_64                                                                                                                                    3/24
  Updating   : libffi-3.0.13-11.4.amzn1.x86_64                                                                                                                                                  4/24
  Installing : ruby20-libs-2.0.0.643-1.21.amzn1.x86_64                                                                                                                                          5/24
  Installing : rubygem20-json-1.8.2-1.39.amzn1.x86_64                                                                                                                                           6/24
  Installing : rubygem20-bigdecimal-1.2.0-1.21.amzn1.x86_64                                                                                                                                     7/24
  Installing : rubygems20-2.0.14-1.21.amzn1.noarch                                                                                                                                              8/24
  Installing : rubygem20-rdoc-4.1.0-1.28.amzn1.noarch                                                                                                                                           9/24
  Installing : ruby20-irb-2.0.0.643-1.21.amzn1.noarch                                                                                                                                          10/24
  Installing : ruby20-2.0.0.643-1.21.amzn1.x86_64                                                                                                                                              11/24
  Installing : rubygem20-psych-2.0.0-1.21.amzn1.x86_64                                                                                                                                         12/24
  Updating   : glibc-headers-2.17-55.140.amzn1.x86_64                                                                                                                                          13/24
  Updating   : glibc-devel-2.17-55.140.amzn1.x86_64                                                                                                                                            14/24
  Installing : 1:ruby-2.0-0.3.amzn1.noarch                                                                                                                                                     15/24
  Updating   : libffi-devel-3.0.13-11.4.amzn1.x86_64                                                                                                                                           16/24
  Installing : compat-libffi5-3.0.5-3.2.3.amzn1.x86_64                                                                                                                                         17/24
  Cleanup    : glibc-devel-2.12-1.132.el6_5.3.x86_64                                                                                                                                           18/24
  Cleanup    : glibc-headers-2.12-1.132.el6_5.3.x86_64                                                                                                                                         19/24
  Cleanup    : libffi-devel-3.0.5-3.2.el6.x86_64                                                                                                                                               20/24
  Cleanup    : libffi-3.0.5-3.2.el6.x86_64                                                                                                                                                     21/24
  Cleanup    : glibc-common-2.12-1.132.el6_5.3.x86_64                                                                                                                                          22/24
  Cleanup    : nss-softokn-freebl-3.14.3-10.el6_5.x86_64                                                                                                                                       23/24
  Cleanup    : glibc-2.12-1.132.el6_5.3.x86_64                                                                                                                                                 24/24
  Verifying  : compat-libffi5-3.0.5-3.2.3.amzn1.x86_64                                                                                                                                          1/24
  Verifying  : ruby20-libs-2.0.0.643-1.21.amzn1.x86_64                                                                                                                                          2/24
  Verifying  : rubygem20-rdoc-4.1.0-1.28.amzn1.noarch                                                                                                                                           3/24
  Verifying  : glibc-headers-2.17-55.140.amzn1.x86_64                                                                                                                                           4/24
  Verifying  : rubygem20-json-1.8.2-1.39.amzn1.x86_64                                                                                                                                           5/24
  Verifying  : nss-softokn-freebl-3.16.2.3-1.13.amzn1.x86_64                                                                                                                                    6/24
  Verifying  : glibc-common-2.17-55.140.amzn1.x86_64                                                                                                                                            7/24
  Verifying  : rubygems20-2.0.14-1.21.amzn1.noarch                                                                                                                                              8/24
  Verifying  : 1:ruby-2.0-0.3.amzn1.noarch                                                                                                                                                      9/24
  Verifying  : libffi-3.0.13-11.4.amzn1.x86_64                                                                                                                                                 10/24
  Verifying  : ruby20-2.0.0.643-1.21.amzn1.x86_64                                                                                                                                              11/24
  Verifying  : rubygem20-bigdecimal-1.2.0-1.21.amzn1.x86_64                                                                                                                                    12/24
  Verifying  : libffi-devel-3.0.13-11.4.amzn1.x86_64                                                                                                                                           13/24
  Verifying  : ruby20-irb-2.0.0.643-1.21.amzn1.noarch                                                                                                                                          14/24
  Verifying  : rubygem20-psych-2.0.0-1.21.amzn1.x86_64                                                                                                                                         15/24
  Verifying  : glibc-2.17-55.140.amzn1.x86_64                                                                                                                                                  16/24
  Verifying  : glibc-devel-2.17-55.140.amzn1.x86_64                                                                                                                                            17/24
  Verifying  : libffi-devel-3.0.5-3.2.el6.x86_64                                                                                                                                               18/24
  Verifying  : glibc-headers-2.12-1.132.el6_5.3.x86_64                                                                                                                                         19/24
  Verifying  : glibc-devel-2.12-1.132.el6_5.3.x86_64                                                                                                                                           20/24
  Verifying  : nss-softokn-freebl-3.14.3-10.el6_5.x86_64                                                                                                                                       21/24
  Verifying  : glibc-common-2.12-1.132.el6_5.3.x86_64                                                                                                                                          22/24
  Verifying  : libffi-3.0.5-3.2.el6.x86_64                                                                                                                                                     23/24
  Verifying  : glibc-2.12-1.132.el6_5.3.x86_64                                                                                                                                                 24/24

Installed:
  ruby.noarch 1:2.0-0.3.amzn1

Dependency Installed:
  compat-libffi5.x86_64 0:3.0.5-3.2.3.amzn1            ruby20.x86_64 0:2.0.0.643-1.21.amzn1           ruby20-irb.noarch 0:2.0.0.643-1.21.amzn1        ruby20-libs.x86_64 0:2.0.0.643-1.21.amzn1
  rubygem20-bigdecimal.x86_64 0:1.2.0-1.21.amzn1       rubygem20-json.x86_64 0:1.8.2-1.39.amzn1       rubygem20-psych.x86_64 0:2.0.0-1.21.amzn1       rubygem20-rdoc.noarch 0:4.1.0-1.28.amzn1
  rubygems20.noarch 0:2.0.14-1.21.amzn1

Dependency Updated:
  glibc.x86_64 0:2.17-55.140.amzn1          glibc-common.x86_64 0:2.17-55.140.amzn1         glibc-devel.x86_64 0:2.17-55.140.amzn1                  glibc-headers.x86_64 0:2.17-55.140.amzn1
  libffi.x86_64 0:3.0.13-11.4.amzn1         libffi-devel.x86_64 0:3.0.13-11.4.amzn1         nss-softokn-freebl.x86_64 0:3.16.2.3-1.13.amzn1

Complete!

# cd ~
# aws s3 cp s3://aws-codedeploy-us-west-2/latest/install . --region us-west-2
# download: s3://aws-codedeploy-us-west-2/latest/install to ./install
# chmod +x ./install
# sudo ./install auto
# ./install auto
I, [2015-06-15T09:32:30.097237 #2879]  INFO -- : Starting update check.
I, [2015-06-15T09:32:30.097488 #2879]  INFO -- : Attempting to automatically detect supported package manager type for system...
I, [2015-06-15T09:32:30.104515 #2879]  INFO -- : Checking AWS_REGION environment variable for region information...
I, [2015-06-15T09:32:30.104570 #2879]  INFO -- : Checking EC2 metadata service for region information...
I, [2015-06-15T09:32:30.120948 #2879]  INFO -- : Downloading version file from bucket aws-codedeploy-us-west-2 and key latest/VERSION...
I, [2015-06-15T09:32:30.150546 #2879]  INFO -- : Downloading package from bucket aws-codedeploy-us-west-2 and key releases/codedeploy-agent-1.0-1.719.noarch.rpm...
I, [2015-06-15T09:32:30.230465 #2879]  INFO -- : Executing `/usr/bin/yum -y localinstall /tmp/codedeploy-agent-1.0-1.719.noarch.rpm`...
Loaded plugins: security
Setting up Local Package Process
Examining /tmp/codedeploy-agent-1.0-1.719.noarch.rpm: codedeploy-agent-1.0-1.719.noarch
Marking /tmp/codedeploy-agent-1.0-1.719.noarch.rpm to be installed
amzn-main                                                                                                                                                                     | 2.1 kB     00:00
rightscale-epel                                                                                                                                                               | 2.9 kB     00:00
Resolving Dependencies
--> Running transaction check
---> Package codedeploy-agent.noarch 0:1.0-1.719 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

=====================================================================================================================================================================================================
 Package                                        Arch                                 Version                                  Repository                                                        Size
=====================================================================================================================================================================================================
Installing:
 codedeploy-agent                               noarch                               1.0-1.719                                /codedeploy-agent-1.0-1.719.noarch                                10 M

Transaction Summary
=====================================================================================================================================================================================================
Install       1 Package(s)

Total size: 10 M
Installed size: 10 M
Downloading Packages:
Running rpm_check_debug
Running Transaction Test
Transaction Test Succeeded
Running Transaction
  Installing : codedeploy-agent-1.0-1.719.noarch                                                                                                                                                 1/1
Starting codedeploy-agent:Installing codedeploy-agent auto-update cron in '/etc/cron.d/codedeploy-agent-update'...
Installing codedeploy-agent auto-update cron in '/etc/cron.d/codedeploy-agent-update'...Complete
  Verifying  : codedeploy-agent-1.0-1.719.noarch                                                                                                                                                 1/1

Installed:
  codedeploy-agent.noarch 0:1.0-1.719

Complete!
I, [2015-06-15T09:32:32.678572 #2879]  INFO -- : Update check complete.
I, [2015-06-15T09:32:32.678642 #2879]  INFO -- : Stopping updater.
[root@ip-172-31-12-192 ~]# /etc/init.d/codedeploy-agent status
The AWS CodeDeploy agent is running as PID 2904

