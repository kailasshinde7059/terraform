resource "aws_instance" "my_tomcat_server" {
    ami = var.ec2_ami #ami-0dee22c13ea7a9a67
    instance_type = var.ec2_instance

    subnet_id = var.subnet_id
    security_groups = [aws_security_group.myec2_sg.name]
    key_name = "manoj"

      user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install -y git openjdk-17-jdk
              wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.56/bin/apache-tomcat-9.0.56.tar.gz
              tar -xvf apache-tomcat-9.0.56.tar.gz
              mv apache-tomcat-9.0.56 /opt
              git clone https://github.com/kailasshinde7059/student.-War.git
              cd student.-War/student-reg-form-main
              mv student.war /opt/apache-tomcat-9.0.56/webapps
              bash /opt/apache-tomcat-9.0.56/bin/startup.sh
              
              EOF

  tags = {
    Name = "TomcatServer"
  }
}