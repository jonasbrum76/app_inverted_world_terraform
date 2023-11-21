resource "aws_instance" "srv-web01" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  key_name = "ssh-key-passover"
  security_groups = ["allow_ssh", "allow_http", "allow_egrees"]
  user_data = file("deploy_app.sh")

  tags = {
    Name = "srv-web01"
  }
}