# ip_changed
A bash script that logs the current public IP address and alerts when is has changed. This can be launched by cron at a regular basis such as hourly. 
You will need to change the path to the log file and change the e-mail address at the bottom, obvs. 
Example: 

touch ~/Scripts/ip_most_recent.txt
vi ~/Scripts/ip_changed_alert.sh
# Adjust the path to the file to store the last known IP
IP_FILE="/Users/<YOUR-USERNAME>/Scripts/ip_most_recent.txt"
# Adjust the e-mail address to match your own
