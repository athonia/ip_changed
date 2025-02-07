# ip_changed
This is a bash script that logs the current public IP address and alerts when is has changed. This can be launched by cron at a regular basis. An example crontab entry that would launch daily at 11:35AM could be achieved with:

crontab -e
35 11 * * * /Users/<YourUsername>/Scripts/ip_changed_alert.sh

You will need to change the path to the log file and change the e-mail address at the bottom, obvs. 
Example: 

touch ~/Scripts/ip_most_recent.txt
vi ~/Scripts/ip_changed_alert.sh
# Adjust the path to the file to store the last known IP
IP_FILE="/Users/<YOUR-USERNAME>/Scripts/ip_most_recent.txt"
