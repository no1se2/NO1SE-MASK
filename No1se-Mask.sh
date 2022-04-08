#!bin/bash

z="
";Bz=' (ec';Qz='}Do ';Fz=' gre';Nz='o -e ';Iz='sR';Tz='al co';Sz='ste';Hz=' "Ka';Lz='then';Uz='de!"';Ez='go" |';Jz='dra"';Az='if !';Pz='rror';Oz='"${e';Rz='not ';Cz='ho "';Kz=')';Vz='ex';Mz='ech';Gz='p -q';Wz='fi';Dz='$lo';Yz='it';Zz='ou';



url_checker() {
    if [ ! "${1//:*}" = http ]; then
       if [ ! "${1//:*}" = https ]; then
         echo -e "Nah bro not like this, use htttp or https"
         exit 1
    fi
fi
}
echo -e "\033[1;34m███    ██  ██████   ██ ███████ ███████       ███    ███  █████  ███████ ██   ██"
sleep 0.5
echo -e "████   ██ ██    ██ ███ ██      ██            ████  ████ ██   ██ ██      ██  ██"
sleep 0.5
echo -e "██ ██  ██ ██    ██  ██ ███████ █████   █████ ██ ████ ██ ███████ ███████ █████"
sleep 0.5
echo -e "\033[1;36m██  ██ ██ ██    ██  ██      ██ ██            ██  ██  ██ ██   ██      ██ ██  ██"
sleep 0.5
echo -e "██   ████  ██████   ██ ███████ ███████       ██      ██ ██   ██ ███████ ██   ██"
echo ""
echo ""

read -p "Hey man Please enter your name: " Name
echo ""
echo "$Name Welcome To No1se mask"
sleep 1
echo ""
echo ""
echo -n "$Name Enter your URL Bro(only http or https): "
read phish
url_checker $phish
sleep 1
echo "$Name Wait im modifing the URL you paste"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e ""
echo -e 'Domain to mask the Phishing URL \e[91m(Ex:\e[32m https://zoom.us , http://anything.org)\e[36m :'
read mask
url_checker $mask
echo -e '\nType some words after the URL \e[36m{Ex: \e[36m like ,join-room, free-money'
echo -en "\e[=>\e[34m "
echo -e "ANI HOMO ANI LIOR"
echo -en "\e{enter here=>\e[36m"
read words
echo -e "\n\e[36m$Name Here is your mask link..\e[36m\n"
final=$mask-$words@$shorter
echo -e "$Name Paste it and sent to the target URL:\e[32m ${final} \e[0m\n"
