variable "region" {
    type = string
    default = "eu-west-2"
}
variable "ami" {
    type = string
    default = "ami-06178cf087598769c"
}
variable "instance_type" {
    type = string
    default = "m5.large"
}
variable "key_name" {
    type = string
    default = "cerberus"
}
variable "public_key_name" {
    type = string
    default = "/root/terraform-projects/project-cerberus/.ssh/cerberus.pub"
}
variable "install_nginx_script_name" {
    type = string
    default = "/root/terraform-projects/project-cerberus/install-nginx.sh"
}