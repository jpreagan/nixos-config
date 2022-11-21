#!/bin/sh

# Define the clock
Clock() {
	DATETIME=$(date "+%a %b %d %I:%M %p")
	printf "$DATETIME"
}

# Define the battery
Battery() {
	BATPERC=$(cat /sys/class/power_supply/BAT0/capacity)
	echo "$BATPERC% "
}

# Print the status
while true; do
	echo "%{c}$(Clock) %{r}$(Battery)"
	sleep 1
done
