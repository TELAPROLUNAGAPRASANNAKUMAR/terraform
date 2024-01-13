# resource "aws_instance" "conditions" {
#     ami = var.ami_id
#     instance_type = var.instance_name == "Mongodb" ? "t2.micro" : "t3.micro"
  
# }

resource "aws_instance" "conditions" {
  count = 10
  ami = var.ami_id

    # instance_type = "t2.micro"

  instance_type = var.instance_name[count.index] == "MongoDb" || var.instance_name[count.index] == "Mysql" ? "t3.micro" : "t2.micro"

  tags = {
    Name = var.instance_name[count.index]
    }

}

resource "aws_route53_record" "record" {
  count = 10
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain}" # joindevops.artinterpolation
  type    = "A"
  ttl     = 1
  records = [aws_instance.conditions[count.index].private_ip]
}