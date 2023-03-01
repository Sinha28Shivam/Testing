# connection established purpose
mysql -u shivamsinha -pSinha@shivam30 -h localhost -e "USE SAMS"

show(){
mysql -u shivamsinha -pSinha@shivam30 -h localhost -e "USE SAMS; select * from Available_software;" 
}

#mysql -u shivamsinha -pSinha@shivam30 -h localhost -e "USE Authentication"
users() {
mysql -u shivamsinha -pSinha@shivam30 -h localhost -e "USE SAMS; INSERT INTO users (username, password) VALUES ('$username', '$password')"
}

function val() {
local username=$1
local password=$2

result=$(mysql -u shivamsinha -pSinha@shivam30 -h localhost -s -N -e "USE SAMS; SELECT COUNT(*) FROM users WHERE username='$username' AND password='$password'")
if [ $? -ne 0 ];
then
echo "Error: could not execute query"
return 1
fi 

if [ "$result" -eq 1 ];
then 
echo "LoginSuccessful"
return 0
else 
echo "Invalid username"
return 1
fi 
}