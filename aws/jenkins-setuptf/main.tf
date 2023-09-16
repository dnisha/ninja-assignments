locals {
  instance_type = "t2.medium"
}

resource "aws_instance" "jenkins_ec2" {
  ami                         = "ami-0f5ee92e2d63afc18"
  instance_type               = local.instance_type
  subnet_id                   = "subnet-09f911215ecffbfe7"
  key_name                    = "gone-servers"
  vpc_security_group_ids      = ["sg-01c5e535d8683e4d7"]
  associate_public_ip_address = true
  tags = {
    Name = "jenkins-server"
    tool = "ci-cd-tool"
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      host        = aws_instance.jenkins_ec2.public_ip
      user        = "ubuntu"
      private_key = file("/Users/deepaknishad/gone-servers.pem")
    }
    inline = [
      "sudo apt-get update -y",
      "sudo apt install openjdk-17-jre-headless -y",
      "curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null",
      "echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null",
      "sudo apt-get update -y",
      "sudo apt-get install jenkins -y"
    ]
  }
}

output "jenkins_instance_public_ip" {
  value = aws_instance.jenkins_ec2.public_ip
}