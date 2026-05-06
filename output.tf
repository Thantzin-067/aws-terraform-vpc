output "vpc_id" {
  value = aws_vpc.main.id
}

output "instance_ip" {
  value = aws_instance.web_server.public_ip
}

# output "ssh_command" {
#   value = "ssh -i my-terraform-key.pem ubuntu@${aws_instance.web_server.public_ip}"
# }