function login
	if test -e ~/.config/login/LOGED
		return 0
	end
	set term_width 120
	set term_height 42
	set logo_width 38
	set logo_height 20
	set logo_start_x (math $term_width/2 - $logo_width/2)
	set logo_start_y (math $term_height/2 - $logo_height/2)
	set spaces ""
	for i in (seq 1 $logo_start_x)
		set spaces $spaces" "
	end
	set spaces2 $spaces"           "
	set screen (screenfetch -L -E)
	while true
		for i in (seq 1 $logo_start_y)
			echo " "
		end
		for line in $screen
			echo $spaces$line
		end
		echo ""
		tput sgr0
		echo $spaces2(echoColored Blue "Username: ")$USER
		if tryLogin $spaces2
			echo ""
			echo $spaces2"Login succesful."
			unlock
#			comment the line below if you need an USB device to work when connected (adb)
#						sudo powertop --auto-tune > /dev/null 2> /dev/null &
			sleep 1
			clear
			return 0
		end
		echo ""
		tput setaf 1
		echo $spaces2"Login Failed"
		tput setaf 7
		sleep 1
		clear
	end	
	return 1
end
