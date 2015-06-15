# cat /etc/yum.repos.d/cloudera-cdh5.repo
[cloudera-cdh5]
# Packages for Cloudera's Distribution for Hadoop, Version 5, on RedHat or CentOS 6 x86_64
name=Cloudera's Distribution for Hadoop, Version 5
baseurl=http://archive.cloudera.com/cdh5/redhat/6/x86_64/cdh/5/
gpgkey = http://archive.cloudera.com/cdh5/redhat/6/x86_64/cdh/RPM-GPG-KEY-cloudera
enabled=1
gpgcheck = 0


# yum install hadoop
Loaded plugins: security
cloudera-cdh5                                                                                                                                                                 |  951 B     00:00
cloudera-cdh5/primary                                                                                                                                                         |  42 kB     00:00
cloudera-cdh5                                                                                                                                                                                146/146
rightscale-epel                                                                                                                                                               | 2.9 kB     00:00
Setting up Install Process
Resolving Dependencies
--> Running transaction check
---> Package hadoop.x86_64 0:2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6 will be installed
amzn-main/filelists_db                                                                                                                                                        | 4.7 MB     00:00
base/filelists_db                                                                                                                                                             | 6.1 MB     00:03
centosplus/filelists_db                                                                                                                                                       | 800 kB     00:01
cloudera-cdh5/filelists                                                                                                                                                       | 370 kB     00:00
debug/filelists_db                                                                                                                                                            |  38 MB     00:05
epel/filelists_db                                                                                                                                                             | 9.5 MB     00:03
extras/filelists_db                                                                                                                                                           |  32 kB     00:00
rightscale-epel/filelists_db                                                                                                                                                  | 383 kB     00:00
updates/filelists_db                                                                                                                                                          | 2.5 MB     00:01
--> Processing Dependency: zookeeper >= 3.4.0 for package: hadoop-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64
--> Processing Dependency: bigtop-utils >= 0.7 for package: hadoop-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64
--> Processing Dependency: parquet for package: hadoop-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64
--> Processing Dependency: avro-libs for package: hadoop-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64
--> Processing Dependency: nc for package: hadoop-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64
--> Running transaction check
---> Package avro-libs.noarch 0:1.7.6+cdh5.4.2+89-1.cdh5.4.2.p0.4.el6 will be installed
---> Package bigtop-utils.noarch 0:0.7.0+cdh5.4.2+0-1.cdh5.4.2.p0.4.el6 will be installed
---> Package nc.x86_64 0:1.84-24.8.amzn1 will be installed
---> Package parquet.noarch 0:1.5.0+cdh5.4.2+94-1.cdh5.4.2.p0.4.el6 will be installed
--> Processing Dependency: parquet-format >= 2.1.0 for package: parquet-1.5.0+cdh5.4.2+94-1.cdh5.4.2.p0.4.el6.noarch
--> Processing Dependency: hadoop-yarn for package: parquet-1.5.0+cdh5.4.2+94-1.cdh5.4.2.p0.4.el6.noarch
--> Processing Dependency: hadoop-mapreduce for package: parquet-1.5.0+cdh5.4.2+94-1.cdh5.4.2.p0.4.el6.noarch
--> Processing Dependency: hadoop-hdfs for package: parquet-1.5.0+cdh5.4.2+94-1.cdh5.4.2.p0.4.el6.noarch
---> Package zookeeper.x86_64 0:3.4.5+cdh5.4.2+88-1.cdh5.4.2.p0.4.el6 will be installed
--> Running transaction check
---> Package hadoop-hdfs.x86_64 0:2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6 will be installed
--> Processing Dependency: bigtop-jsvc for package: hadoop-hdfs-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64
---> Package hadoop-mapreduce.x86_64 0:2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6 will be installed
---> Package hadoop-yarn.x86_64 0:2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6 will be installed
---> Package parquet-format.noarch 0:2.1.0+cdh5.4.2+10-1.cdh5.4.2.p0.4.el6 will be installed
--> Running transaction check
---> Package bigtop-jsvc.x86_64 0:0.6.0+cdh5.4.2+680-1.cdh5.4.2.p0.4.el6 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

=====================================================================================================================================================================================================
 Package                                      Arch                               Version                                                             Repository                                 Size
=====================================================================================================================================================================================================
Installing:
 hadoop                                       x86_64                             2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6                              cloudera-cdh5                              42 M
Installing for dependencies:
 avro-libs                                    noarch                             1.7.6+cdh5.4.2+89-1.cdh5.4.2.p0.4.el6                               cloudera-cdh5                              55 M
 bigtop-jsvc                                  x86_64                             0.6.0+cdh5.4.2+680-1.cdh5.4.2.p0.4.el6                              cloudera-cdh5                              27 k
 bigtop-utils                                 noarch                             0.7.0+cdh5.4.2+0-1.cdh5.4.2.p0.4.el6                                cloudera-cdh5                              10 k
 hadoop-hdfs                                  x86_64                             2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6                              cloudera-cdh5                              18 M
 hadoop-mapreduce                             x86_64                             2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6                              cloudera-cdh5                              29 M
 hadoop-yarn                                  x86_64                             2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6                              cloudera-cdh5                              15 M
 nc                                           x86_64                             1.84-24.8.amzn1                                                     amzn-main                                  60 k
 parquet                                      noarch                             1.5.0+cdh5.4.2+94-1.cdh5.4.2.p0.4.el6                               cloudera-cdh5                              30 M
 parquet-format                               noarch                             2.1.0+cdh5.4.2+10-1.cdh5.4.2.p0.4.el6                               cloudera-cdh5                             461 k
 zookeeper                                    x86_64                             3.4.5+cdh5.4.2+88-1.cdh5.4.2.p0.4.el6                               cloudera-cdh5                             3.9 M

Transaction Summary
=====================================================================================================================================================================================================
Install      11 Package(s)

Total download size: 193 M
Installed size: 225 M
Is this ok [y/N]: y
Downloading Packages:
(1/11): avro-libs-1.7.6+cdh5.4.2+89-1.cdh5.4.2.p0.4.el6.noarch.rpm                                                                                                            |  55 MB     00:01
(2/11): bigtop-jsvc-0.6.0+cdh5.4.2+680-1.cdh5.4.2.p0.4.el6.x86_64.rpm                                                                                                         |  27 kB     00:00
(3/11): bigtop-utils-0.7.0+cdh5.4.2+0-1.cdh5.4.2.p0.4.el6.noarch.rpm                                                                                                          |  10 kB     00:00
(4/11): hadoop-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64.rpm                                                                                                              |  42 MB     00:00
(5/11): hadoop-hdfs-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64.rpm                                                                                                         |  18 MB     00:00
(6/11): hadoop-mapreduce-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64.rpm                                                                                                    |  29 MB     00:00
(7/11): hadoop-yarn-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64.rpm                                                                                                         |  15 MB     00:00
(8/11): nc-1.84-24.8.amzn1.x86_64.rpm                                                                                                                                         |  60 kB     00:00
(9/11): parquet-1.5.0+cdh5.4.2+94-1.cdh5.4.2.p0.4.el6.noarch.rpm                                                                                                              |  30 MB     00:00
(10/11): parquet-format-2.1.0+cdh5.4.2+10-1.cdh5.4.2.p0.4.el6.noarch.rpm                                                                                                      | 461 kB     00:00
(11/11): zookeeper-3.4.5+cdh5.4.2+88-1.cdh5.4.2.p0.4.el6.x86_64.rpm                                                                                                           | 3.9 MB     00:00
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                                 45 MB/s | 193 MB     00:04
Running rpm_check_debug
Running Transaction Test
Transaction Test Succeeded
Running Transaction
  Installing : avro-libs-1.7.6+cdh5.4.2+89-1.cdh5.4.2.p0.4.el6.noarch                                                                                                                           1/11
  Installing : bigtop-utils-0.7.0+cdh5.4.2+0-1.cdh5.4.2.p0.4.el6.noarch                                                                                                                         2/11
  Installing : zookeeper-3.4.5+cdh5.4.2+88-1.cdh5.4.2.p0.4.el6.x86_64                                                                                                                           3/11
  Installing : bigtop-jsvc-0.6.0+cdh5.4.2+680-1.cdh5.4.2.p0.4.el6.x86_64                                                                                                                        4/11
  Installing : nc-1.84-24.8.amzn1.x86_64                                                                                                                                                        5/11
  Installing : parquet-format-2.1.0+cdh5.4.2+10-1.cdh5.4.2.p0.4.el6.noarch                                                                                                                      6/11
  Installing : parquet-1.5.0+cdh5.4.2+94-1.cdh5.4.2.p0.4.el6.noarch                                                                                                                             7/11
  Installing : hadoop-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64                                                                                                                             8/11
  Installing : hadoop-yarn-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64                                                                                                                        9/11
  Installing : hadoop-mapreduce-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64                                                                                                                  10/11
  Installing : hadoop-hdfs-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64                                                                                                                       11/11
  Verifying  : parquet-1.5.0+cdh5.4.2+94-1.cdh5.4.2.p0.4.el6.noarch                                                                                                                             1/11
  Verifying  : bigtop-jsvc-0.6.0+cdh5.4.2+680-1.cdh5.4.2.p0.4.el6.x86_64                                                                                                                        2/11
  Verifying  : hadoop-mapreduce-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64                                                                                                                   3/11
  Verifying  : hadoop-yarn-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64                                                                                                                        4/11
  Verifying  : avro-libs-1.7.6+cdh5.4.2+89-1.cdh5.4.2.p0.4.el6.noarch                                                                                                                           5/11
  Verifying  : bigtop-utils-0.7.0+cdh5.4.2+0-1.cdh5.4.2.p0.4.el6.noarch                                                                                                                         6/11
  Verifying  : parquet-format-2.1.0+cdh5.4.2+10-1.cdh5.4.2.p0.4.el6.noarch                                                                                                                      7/11
  Verifying  : nc-1.84-24.8.amzn1.x86_64                                                                                                                                                        8/11
  Verifying  : hadoop-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64                                                                                                                             9/11
  Verifying  : hadoop-hdfs-2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6.x86_64                                                                                                                       10/11
  Verifying  : zookeeper-3.4.5+cdh5.4.2+88-1.cdh5.4.2.p0.4.el6.x86_64                                                                                                                          11/11

Installed:
  hadoop.x86_64 0:2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6

Dependency Installed:
  avro-libs.noarch 0:1.7.6+cdh5.4.2+89-1.cdh5.4.2.p0.4.el6       bigtop-jsvc.x86_64 0:0.6.0+cdh5.4.2+680-1.cdh5.4.2.p0.4.el6         bigtop-utils.noarch 0:0.7.0+cdh5.4.2+0-1.cdh5.4.2.p0.4.el6
  hadoop-hdfs.x86_64 0:2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6    hadoop-mapreduce.x86_64 0:2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6    hadoop-yarn.x86_64 0:2.6.0+cdh5.4.2+567-1.cdh5.4.2.p0.4.el6
  nc.x86_64 0:1.84-24.8.amzn1                                    parquet.noarch 0:1.5.0+cdh5.4.2+94-1.cdh5.4.2.p0.4.el6              parquet-format.noarch 0:2.1.0+cdh5.4.2+10-1.cdh5.4.2.p0.4.el6
  zookeeper.x86_64 0:3.4.5+cdh5.4.2+88-1.cdh5.4.2.p0.4.el6

Complete!
