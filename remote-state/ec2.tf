resource "aws_instance" "test" {

    ami= "ami-090252cbe067a9e58"
    instance_type= "t3.micro"
    vpc_security_group_ids =["sg-013109f8790277747"]


    tags = {
     name= "db"
    }

  }