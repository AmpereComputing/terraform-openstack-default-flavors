module "raw_centos_img" {
  source = "./centos"
  enable_centos = true
}
module "raw_debian_img" {
  source = "./debian"
  enable_debian = true
}
module "raw_fedora_img" {
  source = "./fedora"
  enable_fedora = true
}
#module "raw_freebsd_img" {
#  source = "./freebsd"
#  count = var.enable_freebsd ? 1:0
#  enable_freebsd = true
#}
module "raw_opensuse_img" {
  source = "./opensuse"
  enable_opensuse = true
}
module "raw_ubuntu_img" {
  source = "./ubuntu"
  enable_ubuntu = true
}
module "default_flavors" {
  source = "./default-flavors"
  enable_m1_tiny = true
  enable_m1_small = true
  enable_m1_medium = true
  enable_m1_large = true
  enable_m1_xlarge = true
}
