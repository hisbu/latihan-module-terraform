resource "aws_instance" "server-ubuntu" {
  ami                     = var.AWS_AMIS[var.AWS_REGION]
  instance_type           = var.AWS_INSTANCE_TYPE
  vpc_security_group_ids  = ["sg_vm_http","sg_vm_ssh"]
  key_name                = "jcde-key"
  tags = {
    Name = "server-ubuntu-1"
  }
}

resource "aws_instance" "server-awslinux" {
  ami                     = var.AWS_AMIS_AWSLINUX[var.AWS_REGION]
  instance_type           = var.AWS_INSTANCE_TYPE
  vpc_security_group_ids  = ["sg_vm_http","sg_vm_ssh"]
  key_name                = "jcde-key"
  tags = {
    Name = "server-awslinux-1"
  }
}

output "ip-ubuntu" {
  value = aws_instance.server-ubuntu.public_ip
}

output "ip_awslinux" {
  value = aws_instance.server-awslinux.public_ip
}

