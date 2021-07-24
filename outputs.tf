# Print latest Linux image to be used
output "aws_ami_id" {
  value = data.aws_ami.latest-amazon-linux-image.id
}

# Print public IP of the created EC2 Instance
output "ec2_public_ip" {
  value = aws_instance.myapp-server.public_ip
}