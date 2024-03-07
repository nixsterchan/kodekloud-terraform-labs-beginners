resource "aws_instance" "cerberus" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = aws_key_pair.cerberus-key.id

  user_data = file(var.install_nginx_script_name)

  
}

resource "aws_key_pair" "cerberus-key" {
  key_name = var.key_name
  public_key = file(var.public_key_name)
}

resource "aws_eip" "eip" {
  vpc = true
  instance = aws_instance.cerberus.id

  provisioner "local-exec" {
    command = "echo ${aws_eip.eip.public_dns} > /root/cerberus_public_dns.txt"
  }
}

resource "aws_eip_association" "eip_assoc" {
  instance_id = aws_instance.cerberus.id
  allocation_id = aws_eip.eip.id
}