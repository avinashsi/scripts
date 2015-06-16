



aws deploy create-deployment \
  --application-name CodeDeployGitHubDemo-App \
  --deployment-config-name CodeDeployDefault.OneAtATime \
  --deployment-group-name CodeDeployGitHubDemo-DepGrp \
  --description "My GitHub deployment demo" \
  --github-location repository=repository,commitId=commitId
  
  
  aws ec2 run-instances --image-id ami-a123456 --count 1 --instance-type t2.medium --key-name 1234.pem --security-groups launch-wizard-3 
--iam-instance-profile Name="ec2_codedeploy_telematics" --subnet-id subnet-1bacb15d --tags Key=tel_namenode,Value=development   



aws deploy create-application --application-name namenode_dev

aws deploy create-deployment-group --application-name namenode_dev --ec2-tag-filters 
Key=EC2-tag-key,Type=tel_namenode,Value=development --on-premises-tag-filters --deployment-group-name namenode_devgrp --service-role-arn arn:aws:iam::1234567890:role/codedeploy_telematics


aws deploy create-deployment \
  --application-name namenode_dev \
  --deployment-config-name CodeDeployDefault.OneAtATime \
  --deployment-group-name namenode_devgrp \
  --description "Name node deployment" \
  --s3-location https://s3-us-west-2.amazonaws.com/bucket1/namenode_deploy.zip
