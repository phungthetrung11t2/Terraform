data "aws_ami" "bastion" {
  most_recent      = true
  filter {
    name   = "description"
    values = ["Amazon Linux 2 Kernel 5.10*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  owners = ["137112412989"]
}

data "aws_ami" "web" {
  most_recent = true
  filter {
    name   = "description"
    values = ["Amazon Linux 2 Kernel 5.10*"]
  }

  owners   = ["137112412989"]
}

data "aws_ami" "app" {
  most_recent = true
  filter {
    name   = "description"
    values = ["Amazon Linux 2 Kernel 5.10*"]
  }

  owners   = ["137112412989"]
}

# data "aws_ami" "web" {
#   most_recent = true
#   filter {
#     name   = "description"
#     values = ["${var.project}-web*"]
#   }

#   owners   = ["self"]
# }

# data "aws_ami" "app" {
#   most_recent = true
#   filter {
#     name   = "description"
#     values = ["${var.project}-app*"]
#   }
#   owners   = ["self"]
# }