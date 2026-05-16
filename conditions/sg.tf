resource "aws_security_group" "demo_1_sg" {
  name        = "demo-1-sg"
  description = "Allow SSH"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "demo-1-sg"
  }
}

resource "aws_instance" "demo-1" {
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.demo_1_sg.id]

  tags = {
    Name    = "demo-1"
    Env     = "Dev"
    Project = "Roboshop"
  }
}