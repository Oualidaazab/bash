#!/bin/bash
echo -e "\e[33m$(figlet " OUALID BASH PR !
")\e[0m"
#!/bin/bash

echo "Enter a number between 1 and 3:"
read choice

# Switch-case (implemented via case) logic
case $choice in
    1)
        echo "You chose number 1."
        # Run the ls command to list files in the current directory
        ls
        ;;
    2)
        echo "You chose number 2."
        # Run the pwd command to show the current directory path
        pwd
        ;;
    3)
        echo "You chose number 3."
        # List the contents of the /home directory as an example
        ls /home
        ;;
    *)
        echo "Invalid choice, please choose a number between 1 and 3."
        ;;
esac

