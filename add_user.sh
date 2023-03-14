source sample.sh

cowsay "Hello! You're a new user please register yourself"
read -p "Enter username: " username
read -s -p "Enter password: " password
echo ""

users
echo "User '$username' created successfully!"
