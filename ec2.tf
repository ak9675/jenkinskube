resource "aws_instance" "myec" {
  ami           = "ami-0568773882d492fc8"
  instance_type = "t2.nano"
  count = 2
}

output "myec2ip" {
  value = zipmap(aws_instance.myec[*].id,aws_instance.myec[*].private_ip)
}
