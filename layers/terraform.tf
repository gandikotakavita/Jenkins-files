module "ec2" {

  source = "../Modules"

  region = "us-east-2"

  availability_zones = "us-east-2c"

  ami = "ami-0b614a5d911900a9b"

  instance_type = "t2.micro"

  }
