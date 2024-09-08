function autocommit
	if test "$(count $argv)" -ne 1 2>/dev/null
		echo "Must pass a single sting"
		return
	end
	git add .
	git commit -m "$argv[1]"
end
