source sample.sh

echo "Please enter your username and password: "
read -p "Enter username" username
read -s -p "Enter password" password
echo ""

if val "$username" "$password";
then
while true;
do
echo "--------------------"
echo "Please choose an option:"
echo "1. Display Available software"
echo "2. Download software"
echo "3. Delete software"
echo "4. exit"
echo "--------------------"
read -p "Option: " option
case $option in
1)
show
;;
2)
delete 
;;
3)
Download
;;
4)
exit 0
;;
*)
echo "Invalid Option"
;;
esac
done
else
echo "Invalid username"
exit 1
fi


