resource "aws_security_group" "mysg" {
  name        = "allow_ssh"
  description = "Allow SSH "
  
  tags = {
    Name = "allow_ssh"
  }
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # This allows all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "instance1" {
  ami           = var. aws-ami-id
  key_name      =  var.mykey
  instance_type = var.aws-instance-type
availabilty_zone =var.awsAZ
  security_groups = [aws_security_group.mysg.name]
  

  tags = {
    Name = "instance-1"
  }
}

