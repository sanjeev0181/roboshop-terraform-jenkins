resource "aws_instance" "web" {
  ami           = "ami-053b0d53c279acc90" # data.aws_ami.ubuntu.image_id
  instance_type =  var.instance_type # "t2.micro"
  key_name = "terraform"
  # vpc_security_group_ids - Associated security groups in a non-default VPC.
  vpc_security_group_ids = [ data.aws_security_group.selected.id ]
  tags = {
    Name = "HelloWorld"
  }
  connection {
    type     = "ssh"
    user     = "ubuntu"
    private_key = "${file("./private/terraform.pem")}"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y git",
      "sudo su",
      "sudo git clone https://github.com/sanjeev0181/roboshop-terraform-jenkins",    ]
  }
}

data "aws_security_group" "selected" {
    name = "launch-wizard-2"
}