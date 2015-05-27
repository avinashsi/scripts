#!/usr/bin/python
#
# Auto-start and stop EC2 instances
#
import boto, datetime, sys
from time import gmtime, strftime, sleep

# AWS credentials
aws_key = "AKIAxxx"
aws_secret = "abcd"

# The instances that we want to auto-start/stop
instances = [
    # You can have tuples in this format:
    # [instance-id, name/description, startHour, stopHour, ipAddress]
    ["i-12345678", "Description", "00", "12", "1.2.3.4"]
]

# --------------------------------------------

# If its the weekend, then quit
# If you don't care about the weekend, remove these three 
# lines of code below.
weekday = datetime.datetime.today().weekday()
if (weekday == 5) or (weekday == 6):
    sys.exit()

# Connect to EC2
conn = boto.connect_ec2(aws_key, aws_secret)

# Get current hour
hh = strftime("%H", gmtime())

# For each instance
for (instance, description, start, stop, ip) in instances:
    # If this is the hour of starting it...
    if (hh == start):
        # Start the instance
        conn.start_instances(instance_ids=[instance])
        # Sleep for a few seconds to ensure starting
        sleep(10)
        # Associate the Elastic IP with instance
        if ip:
            conn.associate_address(instance, ip)
    # If this is the hour of stopping it...
    if (hh == stop):
        # Stop the instance
        conn.stop_instances(instance_ids=[instance])
