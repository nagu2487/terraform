variable "AWS_ACCESS_KEY" {}

variable "AWS_SECRET_KEY" {}

variable "AWS_REGION" {
    default = "us-east-1"
}

variable "AMIS" {
    type = "map"
    default = {
        us-east-1 = "ami-04d29b6f966df1537"
    }
}

variable "PATH_TO_PRIVATE_KEY" {
    default = "key"
}

variable "PATH_TO_PUBLIC_KEY" {
    default =  "key.pub"
}

variable "INSTANCE_USERNAME" {
    default = "ubuntu"
}