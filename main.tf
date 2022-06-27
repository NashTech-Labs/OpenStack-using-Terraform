resource "openstack_blockstorage_volume_v2" "volume_for_broker" {
  region      = "RegionOne"
  name        = "volume-${var.counter_start + count.index }"
  description = "volume for kafka-broker-${var.counter_start+count.index}"
  size        = 3
  count       = "${var.kfk_count}"
}

resource "openstack_compute_instance_v2" "kfk-broker" {
  count           = "${var.kfk_count}"
  name            = "kfk-broker-${var.counter_start+count.index}"
  image_id        = "ad091b52-742f-469e-8f3c-fd81cadf0743"
  flavor_id       = "3"
  key_pair        = "my_key_pair_name"
  security_groups = ["default"]

  metadata = {
    type   = "kafka-node"
  }

  network {
    name = "my_local_network"
  }
}



