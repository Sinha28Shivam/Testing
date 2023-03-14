clear
toilet -t -f slant Software Management System
echo "----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
fortune | cowsay "Welcome to the SAMS"
while true;
do
echo "Please Enter your role: "
echo "1. New User"
echo "2. Existing user"
#echo "3. New Admin"
echo "3. Existing Admin"
echo "4. Exit"

read -p "Option: " option

case $option in 
1)
source add_user.sh
;;
2)
source login.sh
;;
3)
source Admin.sh
;;
4)
exit 0
;;
*)
echo "Invalid Option"
esac
done



