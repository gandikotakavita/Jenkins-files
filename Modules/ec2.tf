provider "aws"{

 region = "${var.region}"

 #access_key = "**********"

 #secret_key = "**********"

 }

resource "aws_instance" "ec2_pro" {

 availability_zone = "${var.availability_zones}"

 ami ="${var.ami}"

 instance_type = "${var.instance_type}"

 key_name = "Devops1"

 #count = var.instance_count

 tags = {

 Name = "Node"

 #Name = "Terraform-${count.index + 1}"

 }

 security_groups= ["${aws_security_group.Aws_Devops83.name}"] 

 }



 resource "aws_security_group" "Aws_Devops83" {

 name="Aws_Devops83"


ingress {

 from_port = 22

 to_port = 22

 protocol = "TCP"

cidr_blocks = ["0.0.0.0/0"]

 }

 
 ingress {

 from_port = 8080

 to_port = 8080

 protocol = "TCP"

 cidr_blocks = ["0.0.0.0/0"]

 }


 egress {

 from_port = 0

 to_port = 0

 protocol = "-1"

 cidr_blocks = ["0.0.0.0/0"]


 }

}


# resource "aws_ebs_volume" "volume1" {

# availability_zone = "us-east-2c"

# size = 1

# encrypted = true

 

# }
