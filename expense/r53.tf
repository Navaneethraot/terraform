resource "aws_route53_record" "Expense" {
  count = length(var.instance_name)
  zone_id = var.zone_id
  name    = var.instance_name[count.index] == "frontend" ? var.domain_name : "${var.instance_name[count.index]}.${var.domain_name}"
   #count and count.index will not work in locals
  #name = local.record_name
  type    = "A"
  ttl     = 300
  records = var.instance_name[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
  # if records already exists
  allow_overwrite = true
}