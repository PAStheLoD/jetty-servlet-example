#!/bin/sh


wget 'http://eclipse.org/downloads/download.php?file=/jetty/9.0.0.RC0/dist/jetty-distribution-9.0.0.RC0.zip&r=1' -O jetty.zip

unzip jetty.zip

rm -rf jetty-distribution-9.0.0.RC0/webapps
mkdir -p jetty-distribution-9.0.0.RC0/webapps

