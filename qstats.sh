# qstats.sh - qstat simplified (showing all users)
# C: 2013
# M: Sep 3, 2015
# A: Leandro Lima <llima@ime.usp.br>

date +'%H:%M - %h, %d'; 
echo; 
echo -e "\e[32mRunning\e[0m"; 
qstat -u "*" | awk 'NR > 2 && $5 == "r" {print $4}' | sort | uniq -c
echo;
echo -e "\e[33mWaiting\e[0m";
qstat -u "*" | awk 'NR > 2 && $5 == "qw" {print $4}' | sort | uniq -c
