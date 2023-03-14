source sample.sh


echo "Please enter your username and password: "
read -p "Enter username: " username
read -s -p "Enter password: " password
echo ""
espeak "Hello! Welcome back $username"

if val "$username" "$password";
then
while true;
do
#echo "--------------------"
echo "Please choose an option:"
echo "1. Available software"
echo "2. Download software"
echo "3. Delete software"
echo "4. back"
echo "--------------------"
read -p "Option: " option
case $option in
1)
show
;;
2)
download 
;;
3)
Delete
;;
4)
source display.sh
;;
*)
echo "Invalid Option"
;;
esac
done
else
espeak "Invalid username"
exit 1
fi
clear

