#!/bin/bash

export JETTY=~/java-jetty/jetty-distribution-9.0.0.RC0
export JETTY=jetty-distribution-9.0.0.RC0

if [ ! -r $JETTY/lib/servlet-api-3.0.jar ] ; then
    echo "Can't find J2EE Servlet API library (<JETTY>/lib/servlet-api-3.0.jar)"
    exit -1
fi

if javac -cp $JETTY/lib/servlet-api-3.0.jar  WEB-INF/classes/HelloWebServlet.java ; then
    mkdir build
    cp -r WEB-INF build/
    find build/ -type f -name '*.java' | xargs rm
else
    echo "Build failed."
    exit -1
fi


