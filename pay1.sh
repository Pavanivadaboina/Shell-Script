script=$(realpath "$0")
script_path=$(dirname "$script")
source ${script_path}/common.sh
rabbitmq_user_password=$1

if [ -z "$rabbitmq_user_password" ]
then
echo Roboshop Appuser passwd is missing
exit 1
fi

echo -e "\e[32m >>>>>>>install python<<<<<<<\e]0m"
yum install python36 gcc python3-devel -y
echo -e "\e[32m >>>>>>>add user for the app<<<<<<<\e]0m"
useradd ${app_user}
echo -e "\e[32m >>>>>>>create a directory<<<<<<<\e]0m"
rm -rf /app
mkdir /app
echo -e "\e[32m >>>>>>>download app content<<<<<<<\e]0m"
curl -L -o /tmp/payment.zip https://roboshop-artifacts.s3.amazonaws.com/payment.zip
cd /app
echo -e "\e[32m >>>>>>>unzip app content<<<<<<<\e]0m"
unzip /tmp/payment.zip
cd /app
echo -e "\e[32m >>>>>>>download dependencies<<<<<<<\e]0m"
pip3.6 install -r requirements.txt
echo -e "\e[32m >>>>>>>copy payment service file<<<<<<<\e]0m"
sed -i -e "s|rabbitmq_user_passwd|${rabbitmq_user_passwd}|" ${script_path}/payment.service
cp ${script_path}/payment.service /etc/systemd/system/payment.service
echo -e "\e[32m >>>>>>>start payment service<<<<<<<\e]0m"
systemctl daemon-reload
systemctl enable payment
systemctl restart payment