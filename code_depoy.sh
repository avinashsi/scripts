aws s3 cp s3://aws-codedeploy-us-west-2/latest/install . --region us-west-2
download: s3://aws-codedeploy-us-west-2/latest/install to ./install
chmod +x ./install
sudo ./install auto
