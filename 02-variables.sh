 #Shell script will run the command inside $() and stores the output into the variable Date

 Date=$(date)
 echo "this script is executed at time: $Date"



###this is execute command inside  shellscript & take the output\
####we will give the arugmemts (which is  ram raheem for $1 $2) in command line (which is terminal))

 Name1=$1 # this is first value from command line
 Name2=$2 # this is second value from command line
 Name3=$3 # this is third value from command line

echo "$Name1: $Name1 is a good boy"
echo "$Name2: $Name2 friends"
echo "$Name3: $Name3 is intelligent"



#special variables fot inputs

echo script name - $0
echo first arg - $1
echo sec arg - $2
echo all arg - $*
echo no of arg - $#