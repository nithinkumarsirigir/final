#!/bin/bash

echo "Installing MongoDb"



isZypper=`command -v zypper`
# Some of the previous commands will fail with an exit code other than zero (intentionally),
# so we do not set error handling to stop (set e) until after they've run
echo "Using zypper package manager"
    zypper -y update
    zypper -y install mangodb





    releasever=7
    cat >/etc/yum.repos.d/mongodb-org-3.0.repo <<-EOF
[mongodb-org-3.0]
name=MongoDB Repository
baseurl=http://download.opensuse.org/repositories/devel:languages:python/SLE_12_SP2/devel:languages:python.repo

    zypper  install -y mongodb-org

     sudo service mongod restart
    chkconfig mongod on

[root@testpaching linux-install-mongodb]# cat Artifactfile.json
{
    "$schema": "https://raw.githubusercontent.com/Azure/azure-devtestlab/master/schemas/2016-11-28/dtlArtifacts.json",
    "title": "MongoDB",
    "publisher": "Microsoft",
    "description": "Install MongoDB on Linux",
    "tags": [
        "MongoDB",
        "Linux"
    ],
    "iconUri": "https://raw.githubusercontent.com/Azure/azure-devtestlab/master/Artifacts/linux-install-mongodb/mongoDBArtifact.png",
    "targetOsType": "Linux",
    "runCommand": {
        "commandToExecute": "['sh linux_install_mongodb_v1.sh']"
    }
