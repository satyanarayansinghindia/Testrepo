provider "google" {
project = "skillful-air-333110"
region = "europe-north1"
credentials = "svckey01.json"
}

variable "machine" {
type = string
default = "e2-standard-2"
}

resource "google_compute_instance" "newvm1" {
name = "appvm"
machine_type = var.machine
zone = "europe-north1"
network_interface {
network = "vpc001"
subnet = "subnet2"
}
boot_disk {
initialize_params {
image = "windows-server-2012-r2-dc-core-v20200609"
}
}
}
