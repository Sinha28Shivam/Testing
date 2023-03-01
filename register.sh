# User registration function
register_user() {
    read -p "Enter a username: " username
    read -s -p "Enter a password: " password
    echo ""

    # Check if username already exists
    user=$(mysql -h $localhost -u $shivamsinha -p$Sinha@shivam30 -D $SAMS -N -e "SELECT * FROM users WHERE username='$username'")
    if [[ -n $user ]]; then
        echo "Username already exists. Please choose a different username."
        return 1
    fi

    # Insert user into database
    mysql -h $localhost -u $shivamsinha -p$Sinha@shivam30 -D $SAMS -e "INSERT INTO users (username, password, is_admin) VALUES ('$username', '$password', 0)"

    echo "User registration successful!"
    return 0
}

# Admin registration function
register_admin() {
    read -p "Enter an admin username: " username
    read -s -p "Enter a password: " password
    echo ""

    # Check if username already exists
    user=$(mysql -h $localhost -u $shivamsinha -p$Sinha@shivam30 -D $SAMS -N -e "SELECT * FROM users WHERE username='$username'")
    if [[ -n $user ]]; then
        echo "Username already exists. Please choose a different username."
        return 1
    fi

    # Insert admin into database
    mysql -h $localhost -u $shivamsinha -p$Sinha@shivan30 -D $SAMS -e "INSERT INTO users (username, password, is_admin) VALUES ('$username', '$password', 1)"

    echo "Admin registration successful!"
    return 0
}

# Main menu loop
while true;
do
    # Display login menu
    echo "Software Management System"
    echo "-----------------------------"
    echo "1. User login"
    echo "2. Admin login"
    echo "3. User registration"
    echo "4. Admin registration"
    echo "5. Exit"
    echo "-----------------------------"

    # Get user input
    read -p "Enter your choice: " choice

    # Process user input
    case $choice in
        1)
            # User login
            login
            if [[ $? -eq 0 ]]; then
                # User is logged in as a regular user
                while true; do
                    # Display user menu
                    echo "User Menu"
                    echo "-----------------------------"
                    echo "1. List all software"
                    echo "2. Download software"
                    echo "3. Exit"
                    echo "-----------------------------"

                    # Get user input
                    read -p "Enter your choice: " choice

                    # Process user input
                    case $choice in
                        1)
                            # List all software
                            list_software
                            ;;
                        2)
                            # Download software
                            download_software
                            ;;
                        3)
                            # Exit
                            exit 0
                            ;;
                        *)
                            # Invalid input
                            echo "Invalid choice. Please try again."
                            ;;
                    esac
                done
            fi
     esac
 done      