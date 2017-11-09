#!/bin/bash



echo "Installing MongoDb"



isApt=`command -v apt-get`

isYum=`command -v yum`

isZypper=`command -v zypper`


# Some of the previous commands will fail with an exit code other than zero (intentionally), 

# so we do not set error handling to stop (set e) until after they've run

set -e



if [ -n "$isApt" ] ; then

    echo "Using APT package manager"

    

    apt-get -y update

    apt-get -y install mongodb

elif [ -n "$isZypper" ] ; then

    echo "Using zypper package manager"



    zypper clean all

    zypper -y update

    

    releasever=7

    cat >/etc/yum.repos.d/mongodb-org-3.0.repo <<-EOF

[mongodb-org-3.0]

name=Mysql Repository

baseurl=http://download.opensuse.org/repositories/devel:languages:python/SLE_12_SP2/devel:languages:python.repo

gpgcheck=0

enabled=1

EOF

    

    zypper install -y zypper

    

    service mysql start

    chkconfig mysql on

fi
