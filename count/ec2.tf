resource "aws_instance" "DB" {
   # count = 3
   count = length(var.instance_name)
    ami= var.image_id
    instance_type= var.instance_type
    #left side things are called as arguments, right side things are called as values
    vpc_security_group_ids =[aws_security_group.allow_ssh.id]


    tags = {
      Name = var.instance_name [count.index]
    }

  }
resource "aws_security_group" "allow_ssh" {
  name        = var.sg_group
  description = var.sg_description

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }  

  egress {
    from_port = 0
    to_port = 0
    protocol =  -1
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags ={
    name= "allow ssh"
    createdby="Navaneethrao"
  }

  

} 