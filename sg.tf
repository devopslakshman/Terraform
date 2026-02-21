
resource "aws_security_group" "demo_sg" {
  name        = "demo-sg"
  description = "Allow all inbound and outbound traffic"


  # Inbound - Allow Everything
  ingress {
    description      = "Allow all inbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"      # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"]
  }

  # Outbound - Allow Everything
  egress {
    description      = "Allow all outbound traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_all_sg"
    Name="demo security group"
  }
}
