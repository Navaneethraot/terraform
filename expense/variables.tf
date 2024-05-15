#ec2 variables
variable "instance_name" {
    type= list
    default = ["DB","backend", "frontend"]
  
}

variable "image_id" {
  type        = string
  default = "ami-090252cbe067a9e58" #optional
  description = "RHEL - ami." #optional

}
variable "common_tags" {
  default = {
    Project= "Expense"
    Environment= "Dev"
    terraform= "true"
  }

}

variable "instance_type" {
    default = "t3.micro"
    type = string
  
}

#Sg variables
variable "sg_group" {
    default = "allow ssh"
  
}
variable "sg_description" {
    default = "allowing port 22"
  
}
variable "ssh_port" {
    default = 22
  
}
variable "protocal" {
    default = "tcp"
  
}
variable "allow_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
  
}

#r53 variables
variable "zone_id" {
    default = "Z00214342B7WS9FTUZVP3"
  
}
variable "domain_name" {
    default = "navaneeth.cloud"
  
}