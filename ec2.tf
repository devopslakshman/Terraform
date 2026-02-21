resource "aws_instance" "demo_server" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.demo_sg.id]
    tags = {
      Name= "demo-server"
      ENV= "Dev"
      terraform ="true"
    }



  
}