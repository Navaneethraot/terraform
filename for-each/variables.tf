variable "instance_name" {
    type = map
    default = {
        db  = "t3.small"
        backend =  "t3.micro"
        frontend =  "t3.micro"
    }
  
}

variable "common_tags" {
    type = map
        default = {
            Project = "expense"
           terraform = true
        }
       
}

variable "domain_name" {
    default = "navaneeth.cloud"
}

variable "zone_id" {
    default = "Z00214342B7WS9FTUZVP3"
}