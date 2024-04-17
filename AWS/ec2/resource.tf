resource "aws_instance" "my_instance"{
    ami = "ami-005e54dee72cc1d00"
    instance_type = "t2.micro"

    tags = {
        Name = "MyInstancne"
    }
}