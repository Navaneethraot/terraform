resource "aws_instance" "test" {

    ami= var.image_id
    instance_type= var.instance_name=="DB" ? "t3.small" : "t3.micro"
    
  }