variable "image_id" {
  type        = string
  default = "ami-090252cbe067a9e58" #optional
  description = "RHEL - ami." #optional
}

variable "instance_type" {
    default = "t3.micro"
    type = string
  
}

variable "tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Module = "DB"
        Name = "DB"
    }
}

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
variable "instance_name" {
    type = list 
    default = ["DB", "frontend", "backend"]
  
}