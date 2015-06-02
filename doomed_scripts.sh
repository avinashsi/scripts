GET SPOT_INSTANCES_PRICE_LIST

aws ec2 describe-spot-price-history --instance-types m1.xlarge --product-description Linux/UNIX --start-time 2015-05-26T07:08:09 --end-time 2015-05-27T07:08:09  --region us-west-2 > aws ec2 describe-spot-price-history --instance-types m1.xlarge --product-description Linux/UNIX --start-time 2015-05-26T07:08:09 --end-time 2015-05-27T07:08:09  --region us-west-2 > stats.txt

for windows :  findstr SpotPrice stats.txt

for linux : grep SpotPrice stats.txt







1. aws autoscaling create-launch-configuration --launch-configuration-name "new-launch-configuration-name" --image-id "new-AMI-id"

2. aws autoscaling update-auto-scaling-group --auto-scaling-group-name "current-autoscaling-group-name" --launch-configuration-name "new-launch-configuration-name"

3. aws autoscaling delete-launch-configuration --launch-configuration-name "old-launch-configuration-name"




###################################CREATING LAUNCH CONFIGURATION ##############################################################################################

To create a launch configuration

The following example uses the create-launch-configuration command to create a launch configuration:

aws autoscaling create-launch-configuration --launch-configuration-name my-test-lc --image-id ami-c6169af6 --instance-type m1.medium

The following example uses the create-launch-configuration command to create a launch configuration using Spot Instances:

aws autoscaling create-launch-configuration --launch-configuration-name my-test-lc --image-id ami-c6169af6 --instance-type m1.medium --spot-price "0.50"


The following example creates a launch configuration and assigns it a key pair and bootstrapping script:

aws autoscaling create-launch-configuration --launch-configuration-name detailed-launch-config --key-name qwikLABS-L238-20080 --image-id ami-c6169af6 --instance-type m1.small --user-data file://labuserdata.txt


The following example creates a launch configuration based on an existing instance. In addition, it also specifies launch configuration attributes such as a security group, tenancy, Amazon EBS optimization, and bootstrapping script:

aws autoscaling create-launch-configuration --launch-configuration-name detailed-launch-config --key-name qwikLABS-L238-20080
--instance-id i-7e13c876 --security-groups sg-eb2af88e --instance-type m1.small --user-data file://labuserdata.txt --instance-monitoring Enabled=true --no-ebs-optimized 
--no-associate-public-ip-address --placement-tenancy dedicated --iam-instance-profile "autoscalingrole"




########################################################Auto Scaling group######################################################


The following create-auto-scaling-group command launches an Auto Scaling group in a VPC:

aws autoscaling create-auto-scaling-group --auto-scaling-group-name basic-auto-scaling-group --launch-configuration-name
basic-launch-config --min-size 1 --max-size 3 --vpc-zone-identifier subnet-41767929c

The following create-auto-scaling-group command launches an Auto Scaling group and configures it to use Elastic Load Balancing:
aws autoscaling create-auto-scaling-group --auto-scaling-group-name extended-auto-scaling-group-2 --launch-configuration-name
basic-launch-config-3 --load-balancer-names "sample-lb" --health-check-type ELB --health-check-grace-period 120

The following create-auto-scaling-group command launches an Auto Scaling group. It specifies Availability Zones (using the availability-zones parameter) instead of subnets. It also launches any instances into a placement group and sets the termination policy to terminate the oldest instances first:

aws autoscaling create-auto-scaling-group --auto-scaling-group-name extended-auto-scaling-group-2 --launch-configuration-name 
basic-launch-config-3 --min-size 1 --max-size 3 --desired-capacity 2 --default-cooldown 600 --placement-group 
sample-placement-group --termination-policies "OldestInstance" --availability-zones us-west-2c

The following create-auto-scaling-group command launches an Auto Scaling group and assigns a tag to instances in the group:

aws autoscaling create-auto-scaling-group --auto-scaling-group-name tags-auto-scaling-group --instance-id i-22c99e2a 
--min-size 1 --max-size 3 --vpc-zone-identifier subnet-41767929 --tags ResourceId=tags-auto-scaling-group,
ResourceType=auto-scaling-group,Key=Role,Value=WebServer







