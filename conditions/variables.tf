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

variable "instance_name" {
    default = "DB"
  
}

