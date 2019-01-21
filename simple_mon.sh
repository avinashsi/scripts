# -----------------------------------------------------------------------------
# Author  = Avinash Kumar Singh
# Date    = 2019/21/01
# Version = 1.0
# -----------------------------------------------------------------------------
#!/bin/sh
###Define Service to be monitored  e.g service_names=("rsyslog")
service_name=("rsyslog")
##wait time in sec ##
wait_time=5
##No_of_attempts_to_start_Service###
number_of_attempts=5
###ensure /var/log/report/ directory is created before schduling it in the backround ##########
debug_report=/var/log/report/debug_report_"$(date +%Y%d%M)".txt
error_report=/var/log/report/error_report_"$(date +%Y%d%M)".txt
#####
#
##CHECK COMMAND #################
/usr/bin/systemctl status rsyslog -l >> $debug_report
if [ $? != 1 ]
then
        /usr/bin/systemctl start $service_name -l >> $debug_report
	if [ $? -ne 0 ]; then
	echo "Service is not comming up Trying to restart after $wait_time sec"
	  	n=0
   	  	until [ $n -ge $number_of_attempts ]
   	  	do
      	  	/usr/bin/systemctl start $service_name  >> $error_report 2>&1
      	  	n=$[$n+1]
      		sleep $wait_time
	      done
		echo "Command failed after $number_of_attempts Attempts Check /var/log/report/ for errors"
	    fi
         fi
###################################
