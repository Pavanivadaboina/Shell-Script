
special veriables
# -z is to check whether the variable is empty or not


noddles_veg=$1
price=$2

if [ -z "noddles_veg"]; then
  echo show no item avaiable
  exit
fi

  if [ "noddles_veg" == "free"];
  then
    echo free pirce - $price
    else
      echo no noddles availble