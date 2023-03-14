source sample.sh


echo "Please enter your username and password: "
read -p "Enter username: " username
read -s -p "Enter password: " password
echo ""

cowsay "Hello! Welcome back $username"

if Admin "$username" "$password";
then
while true;
do
echo "--------------------"
echo "Please choose an option:"
echo "1. Insert new software"
echo "2. Update software"
echo "3. Delete software"
echo "4. View software"
echo "5. View User"
echo "6. Exit"
echo "--------------------"
read -p "Option: " option
case $option in
1)
 echo "Please enter the new software information:"
        read -p "Software Name: " software_name
        read -p "Version: " version
        read -p "Download link: " Download_link

        # Add the new software to the database
        insertSoft "$Software_name" "$version"W "$download_link"

        echo "Software added successfully."
        ;;
2)
delete 
;;
3)
Download
;;
4)
show
;;
5)
view_user
;;
6)
source display.sh
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



