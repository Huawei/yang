#!/bin/bash
#Run this script  directly in the folder where yang files are stored, and make sure the pyang tool has been installed.

function env_check()
{
    tmplog=".pyang_test.log"
    pyang -v >$tmplog 2>&1
    if [ "$?" != "0" ] ;then
        echo "Please install the pyang tool first."
        echo "The site of pyang: https://github.com/mbj4668/pyang."
        rm -rf $tmplog
        exit 1
    fi
    rm -rf $tmplog
    return 0
}

function yang_check()
{
    local retVal=0
    for file in ./vendor/huawei/network-router/8.9.10/huawei/*.yang
    do
        pyang --lint $file -p ./vendor/huawei/network-router/8.9.10/huawei/ -p ./vendor/huawei/network-router/8.9.10/ietf/
        if [ "$?" != "0" ]; then
            retVal=1
        fi  
    done
    if [ "$retVal" == "0" ];then
        echo "All the yang files are correct."
    fi
    return $retVal
}

function main()
{
    env_check
    yang_check 
}
main
