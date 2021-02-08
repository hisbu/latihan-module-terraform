variable "AWS_REGION" {
  type = string
  default = "ap-southeast-1"
}

variable "AWS_AMIS" {
  type = map(string)
  description = "map of aws amis id"
  default = {
    ap-southeast-1 = "ami-0c20b8b385217763f"
    ap-southeast-2 = "ami-07fbdcfe29326c4fb"
    us-east-1 = "ami-0885b1f6bd170450c"
  }
}


variable "AWS_AMI_AWSLINUX" {
  
}

variable "AWS_INSTANCE_TYPE" {
  type = string
  description = "type of aws ec2 instance"
  default = "t2.micro"
}