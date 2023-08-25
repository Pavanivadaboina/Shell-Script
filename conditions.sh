
#special veriables
# -z is to check whether the variable is empty or not


noddles_veg=$1


if [ "$noddles_veg -gt 200" ];
then
  echo show "$noddles_veg" avaiable
  else
    echo show "$noddles_veg" not avilable
fi

