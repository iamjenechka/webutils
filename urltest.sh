#!/bin/bash
while true
do
	ANSWER=$(curl -o /dev/null --silent --head --write-out '%{http_code}\n' http://avto-ligalim.ru)
	if [[ $ANSWER == 200 ]]
		then
			DATE=$(date)
			echo 'OK' $DATE >> site_access.log 
		else 
			DATE=$(date)
			echo 'ERROR' $DATE >> site_error.log
			
	fi
	sleep 10
done
