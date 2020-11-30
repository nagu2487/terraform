# module "consul" {
#     source = "github.com/nagu2487/terraform.git"
#     key_name = "${aws_key_pair.mykey.key_name}"
#     key_path = "${var.PATH_TO_PRIVATE_KEY}"
# }

# output "consul-output" {
#     value = "${module.consul.server.address}"
# }