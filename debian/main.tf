# Debian OpenStack Images
resource "openstack_images_image_v2" "debian_9_arm64_raw" {
  count = var.enable_debian ? 1:0
  name   = "debian-9-openstack-arm64-raw"
  image_source_url = "https://cdimage.debian.org/cdimage/openstack/current-9/debian-9-openstack-arm64.raw"
  container_format = "bare"
  disk_format = "raw"
  properties = {
    key = "value"
    os_distro = "debian"
  }
}
resource "openstack_images_image_v2" "debian_10_arm64_raw" {
  count = var.enable_debian ? 1:0
  name   = "debian-10-openstack-arm64-raw"
  image_source_url = "https://cdimage.debian.org/cdimage/openstack/current-10/debian-10-openstack-arm64.raw"
  container_format = "bare"
  disk_format = "raw"
  properties = {
    key = "value"
    os_distro = "debian"
  }
}
