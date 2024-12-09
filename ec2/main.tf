# ec2/main.tf

resource "aws_instance" "app_server" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  count                  = var.instance_count
  subnet_id              = var.subnet_id
  user_data              = var.user_data
  vpc_security_group_ids = var.vpc_security_group_ids
#  iam_instance_profile   = var.iam_instance_profile
  key_name               = var.key_pair_name
  associate_public_ip_address = true # Disable public IP allocation

  root_block_device {
    volume_size = var.root_volume_size # Set the root volume size
    volume_type = "gp3"                # Volume type (e.g., gp3, gp2)
    encrypted   = true                 # Enable encryption
  }

  ebs_block_device {
    device_name = "/dev/xvdf"
    volume_size = var.extra_volume_size # Additional volume size
    volume_type = "gp3"
    encrypted   = true
  }

  tags = {
    Name = "${var.tag_name}instance"
  }
}