account_id = "624858652650"
project    = "packer-demo"
env        = "trungpt"
profile    = "trungpt"
region     = "us-east-2"

vpc_cidr               = "192.168.0.0/16"
number_public_subnets  = 3
number_private_subnets = 3
public_subnets_cidr    = {
  "0" : "192.168.1.0/24"
  "1" : "192.168.2.0/24"
  "2" : "192.168.3.0/24"
}
private_subnets_cidr    = {
  "0" : "192.168.11.0/24"
  "1" : "192.168.12.0/24"
  "2" : "192.168.13.0/24"
}

bastion_instance_type = "t2.micro"
number_web_instances  = 1
web_instance_type     = "t2.micro"
number_app_instances  = 1
app_instance_type     = "t2.micro"

ssh_allow_cidr        = "0.0.0.0/0"
