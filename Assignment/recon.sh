echo "Assignment : "
figlet "Reconnaissance"
echo
echo "Welcome To Cyber Security : "
echo
figlet "Navttc Batch-2"
echo
echo "Please enter your domain name : "
echo
read domain
echo 
echo ====================
echo
nslookup $domain  >> nslookup.txt
echo
cat nslookup.txt
echo
echo "The final results of Nslookup."
echo 
echo ====================
echo
dig $domain +noall +answer +authority >> dig.txt 
echo
cat dig.txt
echo
echo "The final results of Dig."
echo
echo ====================
echo 
whois $domain >> whois.txt
echo
cat whois.txt
echo
echo "The final results of Whois."
echo 
echo ====================
echo
sublist3r -d $domain  >> sublister.txt
echo
cat sublister.txt
echo
echo "The final results of Subdomains."
echo
echo ====================
echo 
theHarvester -d $domain -l 200 -b all >> theHarvester.txt
echo
cat theHarvester.txt
echo
echo "The final results of theHarvester."
echo 
echo ====================
echo
httrack $domain -o mkdir httrack 
echo
echo "The final results of Httrack."
echo 
echo ====================
echo
xdg-open https://sitereport.netcraft.com/
echo
#echo "The final results of Site report.
#commands we used in this script...# 
#Host # Nslookup # Dig # Whois # Sublist3r # theHarvester # Httrack # Netcraft
