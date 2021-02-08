module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 2

  ami                    = "ami-0c20b8b385217763f"
  instance_type          = "t2.micro"
  key_name               = "jcde-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-0634805f2592b1a8d","sg-06e0b1274acdecf88"]
  subnet_id              = "subnet-8f9768c7"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}