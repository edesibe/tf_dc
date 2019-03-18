variable "domain" {
  default = "devops-training.org"
}

variable "web_instance_count" {
  default = 2
}


module "web" {
  source             = "git@github.com:edesibe/tf_web.git"
  environment        = "${var.environment}"
  vpc_id             = "${module.vpc.vpc_id}"
  public_subnet_ids  = "${module.vpc.public_subnet_ids}"
  private_subnet_ids = "${module.vpc.private_subnet_ids}"
  web_instance_count = "${var.web_instance_count}"
  domain             = "${var.domain}"
  region             = "${var.region}"
  key_name           = "${var.key_name}"
}

output "web_elb_address" {
  value = "${module.web.web_elb_address}"
}

output "web_host_addresses" {
  value = "${module.web.web_host_addresses}"
}

