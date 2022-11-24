#!/bin/bash
if [ -z ${LOCALTONET_AUTH_TOKEN+x} ]
then
    echo "LOCALTONET_AUTH_TOKEN not set, not loading localtonet service"
else
    echo "Starting localtonet service"
    ./localtonet authtoken ${LOCALTONET_AUTH_TOKEN} > localtonet.log 2> localtonet.err < /dev/null &
fi
echo "Starting Daedalus server"
java -Xmx1G -jar daedalus-server-1.0.14.jar instance=A