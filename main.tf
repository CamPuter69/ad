provider "aws" {
  region = "ap-south-1"
    access_key = "AKIAW3MEBOW33ZZUXUVL"
     secret_key = "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"	
}

resource "aws_instance" "TEITSERVER" {
  ami                    = "ami-0522ab6e1ddcc7055"
  instance_type          = "t2.micro"
  #availability_zone      = "ap-south-1"
  key_name               = "aws"
  vpc_security_group_ids = ["sg-0aa6f41f3630704b7"]
  tags = {
    Name    = "My-Instance"
    Project = "TEIT_AWS"
  }
}
