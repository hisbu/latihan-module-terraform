resource "aws_instance" "web1" {
  ami                     = var.AWS_AMIS[var.AWS_REGION]
  instance_type           = var.AWS_INSTANCE_TYPE
  vpc_security_group_ids  = ["sg_vm_http","sg_vm_ssh"]
  key_name                = "jcde-key"
  user_data               = <<-EOF
                      #! /bin/bash
                      sudo apt update
                      sudo apt install apache2 -y
                      sudo systemctl start apache2
                      sudo systemctl enable apache2
                      sudo rm -rf /var/www/html/*
                      echo "================================= CLONE TEMPLATE FROM GITHUB ============================="
                      sudo git clone https://github.com/hisbu/template2.git /var/www/html/
                      echo "================================= add hostname ============================="
                      sudo sed -i -e '1 i\<center>'$(hostname -f)'</center>' /var/www/html/index.html
                    EOF
  tags = {
    Name = "HelloTerraform-1"
  }
}

resource "aws_instance" "web2" {
  ami                     = var.AWS_AMIS[var.AWS_REGION]
  instance_type           = var.AWS_INSTANCE_TYPE
  vpc_security_group_ids  = ["sg_vm_http","sg_vm_ssh"]
  key_name                = "jcde-key"
  user_data               = <<-EOF
                      #! /bin/bash
                      sudo apt update
                      sudo apt install apache2 -y
                      sudo systemctl start apache2
                      sudo systemctl enable apache2
                      sudo rm -rf /var/www/html/*
                      echo "================================= CLONE TEMPLATE FROM GITHUB ============================="
                      sudo git clone https://github.com/hisbu/template2.git /var/www/html/
                      echo "================================= add hostname ============================="
                      sudo sed -i -e '1 i\<center>'$(hostname -f)'</center>' /var/www/html/index.html
                    EOF
  tags = {
    Name = "HelloTerraform-2"
  }
}