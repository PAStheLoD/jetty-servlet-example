#!/bin/bash

export JETTY=jetty

if [ ! -r $JETTY/lib/servlet-api-3.0.jar ] ; then
    echo "Can't find J2EE Servlet API library (<JETTY>/lib/servlet-api-3.0.jar)"
    exit -1
fi


if javac -cp $JETTY/lib/servlet-api-3.0.jar src/WEB-INF/classes/HelloWebServlet.java ; then
    rm -rf build/
    cp -r src/ build/
    find build/ -type f -name '*.java' | xargs rm
    cd build/
    zip -r HelloWebServlet.war .
else
    echo "Build failed."
    exit -1
fi


