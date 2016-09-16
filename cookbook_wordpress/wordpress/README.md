Description
===========

Installs and configures Wordpress according to the instructions at https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-on-ubuntu-14-04s. Does not set up a wordpress blog.

Requirements
============

Mysql should be installed in your machine.

Platform
--------

Ubuntu 14.04

Cookbooks
---------

mysql

Note about Mysql
----------------

This cookbook will decouple the mysql::server and be smart about detecting whether to use a local database or find a database server in the environment in a later version.

License and Authors
-------------------
Author::Hiteshri Ramteke (hiteshri.ramteke@opexsoftware.com)
