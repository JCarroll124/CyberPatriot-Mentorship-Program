#!bin/bash/

#Print a message
echo "Hey I am not a robot"

#Get a list of all users
all_users=$(cut -d: -f1 /etc/passwd)

# Loop through each user
for user in $all_users; do 
	# Try running sudo -l for the user and capture the output
	sudo_output=$(sudo -l -U $user 2>/dev/null | grep "(ALL)")

	# Check if the user has sudo access
	if [ "$sudo_output" ]; then
		echo "User $user can run sudo."
	fi
done

# Print a message at the end
echo "Check complete."
