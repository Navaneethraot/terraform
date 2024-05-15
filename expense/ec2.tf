resource "aws_instance" "expense"{
    count = length(var.instance_name)
    ami=var.image_id
    instance_type=var.instance_name [count.index]== "DB" ? "t3.small" : "t3.micro"
    vpc_security_group_ids =[aws_security_group.allow_ssh.id]
    tags = merge(
        var.common_tags,
        {
            Name = var.instance_name [count.index]
            Module = var.instance_name [count.index]
        }
    )

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
}
