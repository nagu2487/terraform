# provider "aws" {
#     access_key = "AKIAU6LPERRG6OVKEPXO"
#     secret_key = "H6sDBsq+NbmgvK2p8E96/RiWALwX8CPpTs3dSFMY"
#     region = "us-east-1"
# }

# resource "aws_instance" "example" {
#     ami = "ami-04d29b6f966df1537"
#     instance_type = "t2.micro"
# }

# resource "aws_key_pair" "key" {
#     key_name = "key"
#     public_key = "${file("${var.PATH_TO_PUBLIC_KEY}")}"
# }


# resource "aws_instance" "foo" {
#     ami = "${lookup(var.AMIS,var.AWS_REGION)}"
#     instance_type = "t2.micro"
#     # key_name = "${aws_key_pair.key.key_name}"
#     # privisioner "local-exec" {
#     #     command = "echo ${aws_instance.foo.private_ip} >> private_ips.txt"
#     # }


#     # provisioner "file" {
#     #     source = "script.sh"
#     #     destination = "/tmp/script.sh"
#     # }

#     # provisioner "remote-exec" {
#     #     inline = [
#     #         "chmod 777 /tmp/script.sh",
#     #         "sudo /tmp/script.sh"
#     #     ]
#     # }
#     # connection {
#     #     user = "${var.INSTANCE_USERNAME}"
#     #     private_key = "${file("${var.PATH_TO_PRIVATE_KEY}")}"
#     # }

# }

resource "aws_key_pair" "terraform-demo" {
    key_name = "mykey"
    public_key = "${file("mykey.pub")}"
}

resource "aws_instance" "foo" {
    ami = "${lookup(var.AMIS,var.AWS_REGION)}"
    instance_type ="t2.micro"
    key_name="${aws_key_pair.terraform-demo.key_name}"
    user_data = "${file("script.sh")}"
    tags = {
		Name = "Terraform_1"	
		Batch = "5AM"
	}
    
}

output "Public_ip" {
    value = "${aws_instance.foo.public_ip}"
    # value = "${aws_instance.foo.private_ip}"
}



