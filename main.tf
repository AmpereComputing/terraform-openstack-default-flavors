module "centos_aarch46" {
  source = "./centos"
  enable_centos_7_aarch64_qcow2 = true
  enable_centos_7_aarch64_raw = false
}
module "debian_arm64" {
  source = "./debian"
  enable_debian_9_arm64_qcow2 = true
  enable_debian_9_arm64_raw = false
  enable_debian_10_arm64_qcow2 = true
  enable_debian_10_arm64_raw = false
}
module "fedora_aarch64" {
  source = "./fedora"
  enable_fedora_server_29_aarch64_qcow2 = true
  enable_fedora_server_29_aarch64_raw = false
  enable_fedora_server_30_aarch64_qcow2 = true
  enable_fedora_server_30_aarch64_raw = false
}
#module "freebsd_aarch64" {
#  source = "./freebsd"
#  count = var.enable_freebsd ? 1:0
#  enable_freebsd = true
#}
module "opensuse_aarch64" {
  source = "./opensuse"
  enable_opensuse_151_aarch64_qcow2 = true
  enable_opensuse_151_aarch64_raw = false
}
module "ubuntu_arm64" {
  source = "./ubuntu"
  enable_ubuntu_1804_bionic_arm64_qcow2 = true
  enable_ubuntu_1804_bionic_arm64_raw = false
  enable_ubuntu_1604_xenial_arm64_qcow2 = true
  enable_ubuntu_1604_xenial_arm64_raw = false
  enable_ubuntu_1404_trusty_arm64_qcow2 = true
  enable_ubuntu_1404_trusty_arm64_raw = false
}
module "default_flavors" {
  source = "./default-flavors"
  enable_m1_tiny = true
  enable_m1_small = true
  enable_m1_medium = true
  enable_m1_large = true
  enable_m1_xlarge = true
}
