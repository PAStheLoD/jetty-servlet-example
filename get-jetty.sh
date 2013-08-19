#!/bin/sh


wget 'http://eclipse.org/downloads/download.php?file=/jetty/stable-9/dist/jetty-distribution-9.0.5.v20130815.zip&r=1' -O jetty.zip

unzip jetty.zip

mv jetty-distribution-9.0.5.v20130815 jetty
rm -rf jetty/webapps
mkdir -p jetty/webapps

