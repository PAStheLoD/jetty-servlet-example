#!/bin/bash

export JETTY=jetty-distribution-9.0.0.RC0

if [ ! -d $JETTY ] ; then
    echo "<JETTY> not found. Exiting."
    exit -1
fi

if [ ! -d build/ ] || [ $(ls build/ | grep '.war$' | wc -l) = 0 ] ; then
    echo "No WAR files found. Build one!"
    exit -1
fi

rm -rf $JETTY/webapps/
mkdir -p $JETTY/webapps/
cp build/*.war $JETTY/webapps/
cd $JETTY
java -jar start.jar
