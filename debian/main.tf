# Debian OpenStack Images
resource "openstack_images_image_v2" "Debian_9_arm64" {
  count = var.enable_debian ? 1:0
  name   = "debian-9-openstack-aarch64"
  image_source_url = "https://cdimage.debian.org/cdimage/openstack/current-9/debian-9-openstack-amd64.raw"
  container_format = "bare"
  disk_format = "raw"
  properties = {
    key = "value"
    os_distro = "debian"
  }
}
resource "openstack_images_image_v2" "Debian_10_OpenStack_Arm64" {
  count = var.enable_debian ? 1:0
  name   = "debian-10-openstack-aarch64"
  image_source_url = "https://cdimage.debian.org/cdimage/openstack/current-10/debian-10-openstack-amd64.raw"
  container_format = "bare"
  disk_format = "raw"
  properties = {
    key = "value"
    os_distro = "debian"
  }
}
