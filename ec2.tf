resource "aws_instance" "demo-1" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.demo_1_sg.id]

  tags = var.ec2_tags
}