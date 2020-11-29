# provider "aws" {
#     access_key = "AKIAU6LPERRG6OVKEPXO"
#     secret_key = "H6sDBsq+NbmgvK2p8E96/RiWALwX8CPpTs3dSFMY"
#     region = "us-east-1"
# }

# resource "aws_instance" "example" {
#     ami = "ami-04d29b6f966df1537"
#     instance_type = "t2.micro"
# }

resource "aws_instance" "example1" {
    ami = "${lookup(var.AMIS,var.AWS_REGION)}"
    instance_type = "t2.micro"
}


