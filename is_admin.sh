source sample.sh

cowsay "You're new Admin please register yourself for Admin access"
read -p "Enter admin username: " username
read -s -p "Enter admin password: " password
echo ""

Admin_ls
echo "Admin '$username' created successfully!"