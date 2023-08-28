a=10

while [ $a -gt 0 ];
do
  echo a - $a - greater than 0
  a=$(($a-1))
  sleep 1
  done

# Sleep command will delay the loop
# if expression is true then loop allows inside



for phone in iPhone Samsung Vivo Oppo ;
do
  echo phone name - $phone
  sleep 1
  done