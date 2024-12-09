  # environments/dev.tfvars

ami_id                 = "ami-0e86e20dae9224db8"
instance_type          = "t2.micro"
instance_count         = 1
vpc_security_group_ids = ["sg-0dc92152c1920aa6f"]
tag_name               = "DevInstance"
key_pair_name          = "EC2 keypair"
extra_volume_size      = 5
root_volume_size       = 10
subnet_id              = "subnet-038d179e1bf415c78"
