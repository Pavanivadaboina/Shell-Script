
#special veriables
# -z is to check whether the variable is empty or not


noddles_veg=$1


if [ "$noddles_veg" -gt 200 ];
then
  echo  "$noddles_veg" avaiable
  else
    echo  "$noddles_veg" not avilable
fi



fruit=$1

case $1 in

    apple)
      echo price - 10$
      ;;
    mango)
      echo price - 30$
      ;;
    *)
      echo fruit not found
      ;;
    esac
# we dont prefer case commands coz it have limitaions as it can do only string  comparsions
