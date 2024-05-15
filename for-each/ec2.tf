resource "aws_instance" "expense"{
    for_each = var.instance_name
    ami= data.aws_ami.ami_info.id
    instance_type= each.value
    vpc_security_group_ids =["sg-013109f8790277747"]
    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )

}