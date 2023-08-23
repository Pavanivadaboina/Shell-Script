

#array can hold multiple values

Players=("tina" "simth" "ritu")

# here players is a variable and names are values

#inside array we always refer values with index and it starts with 0####

echo "First Player: ${Players[0]}"
echo "all Players: ${Players[@]}"

###here @ means everythinhg inside the array##
##the values [0] [1] are index values



Games=("hockey" "badminton" "cricket")

echo "first game: ${Games[0]}"
echo "second game:${Games[1]}"
echo "all games": ${Games[@]}""