provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    region = "eu-central-1"
    bucket = "edesibecom-remote-state-prod"
    key    = "terraform.tfstate"
  }
}

module "remote_state" {
  source        = "git@github.com:edesibe/tf_remote_state"
  region        = "${var.region}"
  prefix        = "${var.prefix}"
  force_destroy = true
  environment   = "${var.environment}"
}

module "vpc" {
  source          = "git@github.com:edesibe/tf_vpc.git"
  environment     = "${var.environment}"
  region          = "${var.region}"
  key_name        = "${var.key_name}"
  vpc_cidr        = "${var.vpc_cidr}"
  public_subnets  = ["${var.public_subnets}"]
  private_subnets = ["${var.private_subnets}"]
}
