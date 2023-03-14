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
echo "---- LoginSuccessful ----"
return 0
else 
echo "Invalid Username"
return 1
fi 
}

Admin_ls() {
mysql -u shivamsinha -pSinha@shivam30 -h localhost -e "USE SAMS; INSERT INTO users (username, password, is_admin) VALUES ('$username', '$password', 1)"
}
function Admin() {
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
cowsay "Admin Login Successful"
return 0
else 
echo "Invalid Admin Username"
return 1
fi 
}
view_user(){
    mysql -u shivamsinha -pSinha@shivam30 -h localhost -e "USE SAMS; select * from users;"
}
insertSoft() {
mysql -u shivamsinha -pSinha@shivam30 -h localhost -e "USE SAMS; INSERT INTO download_software (Software_name, version, download_link) VALUES ('$Software_name', '$version', '$download_link')"

}
download(){
    mysql -u shivamsinha -pSinha@shivam30 -h localhost -e "USE SAMS; select * from download_software;"
}

