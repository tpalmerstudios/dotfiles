#natpmpc -a 0 0 tcp 0
while true
do
	natpmpc -a 1 54213 tcp 60 -g 10.96.0.1 &> /dev/null
	natpmpc -a 1 54213 udp 60 -g 10.96.0.1 &> /dev/null
	if [ $? -eq 0 ]

	then
		sleep 55
	
	else 
		notify-send -u critical -t 10000 -i /home/tpalmerstudios/Pictures/Projects/Warning.png -A Ignore="OK" -a "natpmpc" "Internet Down" "Port Forwarding has Failed\!\n Please Restart."
		break
	fi
done
