b=`ps -ef | grep tomcat | grep -v 'tomcat-jenkins' | grep -v 'grep'|wc -l`
if [ $b \> 0  ]
then
        kill -9 `ps -ef | grep tomcat | grep -v 'tomcat-jenkins' | grep -v 'grep'|awk '{print $2}'`
        rm -rf /usr/ffg_server/apache-tomcat-6.0.44/webapps/STsocketClient
else
        echo "No tomcats need to be killed"
fi


b1=`ps -ef | grep 'startcontrol.STlistServer ' | grep -v 'grep'|wc -l`
if [ $b1 \> 0  ]
then
        kill -9 `ps -ef | grep 'startcontrol.STlistServer ' | grep -v 'grep'|awk '{print $2}'`
else
        echo "No STsockectServers need to be killed"
fi
