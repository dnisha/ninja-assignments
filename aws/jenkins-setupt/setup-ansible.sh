sudo apt update -y 
sudo apt install ansible -y

sudo apt-get install python3 -y
sudo apt-get install python3-pip -y

sudo pip3 install boto3

sudo mkdir -p /etc/ansible
sudo mv ansible.cfg /etc/ansible/ansible.cfg
sudo mv aws_ec2.yaml /etc/ansible/aws_ec2.yaml

