resource "aws_instance" "JanuServer1" {
  ami = "ami-0603cbe34fd08cb81"
  instance_type = "t2.nano"

  tags = {
    Name = "JananiTerrraformServer1throughGithub"
    Env = "test"
    Application = "SGCAS"
  }
}

output "myawsserver-ip" {
  value = aws_instance.myawsserver.public_ip
}

output "myserver-PrivateIP" {
  value = aws_instance.myawsserver.private_ip
}



