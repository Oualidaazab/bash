#!bin/bash 
echo  "Grant root permissions to allow automatic execution from /bin "  
sudo su 
cd /bin 
clear 
echo -e "\e[32m$(figlet "         AAZAB NETWORK SCANER  ")\e[0m"
echo -e "creat by oualid aazab " 
#color varaible  
YELLOW='\033[0;33m'
BLUE='\033[0;34m'  

echo -e "${BLUE} creat by oualid aazab {NC} "  

#RED= 33 
# Function to show the main menu
show_menu() {
    
    echo -e  "${YELLOW}====================================${NC}"
    echo "      Script Menu "
    echo "===================================="
    echo "1) Scan the network to identify devices connected to it"
    echo "2) single host scan "
    echo "3) stealth scan"
    echo "4) OS detection "
    echo "5) agrissive scanning "
    echo "6) Exit"
    echo "===================================="
}

# First Function
run_thenetscan() {
    echo "Launching  scan the network  which is connect to the network  ..." 
   echo -e "${BLUE} for mor information enter Y and N for exit the programme :" 
   read  userinfo 
   if [[ "$userinfo" == "Y" ]] ; then  
      echo "this scan send a ping  or ICMP packet and recieve this packet from up host "  
  else   
        exit   
  fi  

       read -p "enter the network ip and mask like this 192.168.0.0/24 :" ip1 
        nmap -sn $ip1
}

run_singlehostmod() {
    echo "Launching single host mod .."
    read -p "enter the ip target white out mask   :" ip2 
    nmap $ip2
}
run_stealthscan() {
    echo "Launching stealthscan..."
    read -p "enter the ip target  or the websit name like this example www.youtube.com : " ip3 
    namp -Sn $ip3
}

run_OSdetection() {
    echo "Launching OS detection ..."
    read -p "enter the ip target : " ip4 
    nmap -O $ip4
}

run_agrissivescanning() {
    echo "Launching agrissive scanning..."
     read -p "Eneter the target ip : "  ip5 
     nmap -A $ip5 
} 



while true; do
    show_menu
    read -p "Select an option [1-6]: " choice
    case $choice in
        1)
           run_thenetscan
            ;;
        2)
            run_singlehostmod
            ;;
        3)
            run_stealthscan
            ;;
        4)
            run_OSdetection
            ;;
        5)
            run_agrissivescanning 
            ;;
        6)
            echo "Exiting..."
            break
            ;; 
          
        *)
            echo "Invalid option, please choose again."
            ;;
    esac
done
echo -e  "${BLUE}for more information and for andvance script visit my githube ripository :  https://github.com/Oualidaazab/bash.git  ${NC}" 


