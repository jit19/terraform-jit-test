provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAXVMB7XDSA5FFIXV3"
  secret_key = "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"
}

resource "aws_instance" "DevServer" {
  ami           = "ami-026669ec456129a70"
  instance_type = "t2.micro"
  key_name      = "new_mub"
  security_group= "sg-0f74c4128a68ce976"


  tags = {
    Name = "HelloWorld"
  }
}
