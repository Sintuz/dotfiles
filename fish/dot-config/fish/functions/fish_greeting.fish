function fish_greeting
	if test -z "$TMUX" -a "$(tput cols)" -ge 140
		# figlet "Hello!" | cowsay -f tux -n | lolcat
		echo "$(__merge "$(figlet Hello! | cowsay -f tux -n)" "$(weather)")" | lolcat
	end
end

function __merge
	set -f var1
	echo "$argv[2]" | while read -l line
		set -a var1 "$line"
	end

	set i 1
	echo "$argv[1]" | while read -l line
		printf "%s%s\n" "$(string pad -w50 --right "$line")" "$var1[$i]"
		set i (math $i+1)
	end
end
