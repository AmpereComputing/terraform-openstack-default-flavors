module "raw_centos_img" {
  source = "./centos"
  enable_centos = false
}
module "raw_debian_img" {
  source = "./debian"
  enable_debian = false
}
module "raw_fedora_img" {
  source = "./fedora"
  enable_fedora = false
}
module "raw_freebsd_img" {
  source = "./freebsd"
  enable_freebsd = false
}
module "raw_opensuse_img" {
  source = "./opensuse"
  enable_opensuse = false
}
module "raw_ubuntu_img" {
  source = "./ubuntu"
  enable_ubuntu = false
}
