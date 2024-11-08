variable "vpc_id" {
  description = "The VPC ID where the EC2 instance and security group will reside."
  default = "vpc-06233e052eeb91ecf"
}

variable "subnet_id" {
  description = "The Subnet ID where the EC2 instance will be deployed."
}

variable "ec2_ami" {
  description = "The AMI ID for the EC2 instance."
  default     = "ami-0866a3c8686eaeeba"  # Amazon Linux 2 in us-east-1
}

variable "ec2_instance" {
  description = "Instance type for the EC2 instance."
  default     = "t2.micro"
}