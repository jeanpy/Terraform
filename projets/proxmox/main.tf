# Départ TP02-TP03 : vérifier template, permissions et VMID avant apply.
resource "proxmox_virtual_environment_vm" "web" {
  name      = "${var.prefix}-web"
  node_name = var.node_name
  vm_id     = var.vm_id

  clone { vm_id = var.template_id }
  cpu { cores = 2 }
  memory { dedicated = 2048 }
  network_device { bridge = var.bridge }
  initialization {
    ip_config { ipv4 { address = "dhcp" } }
    user_account {
      username = "debian"
      keys     = [trimspace(file(var.ssh_public_key_path))]
    }
  }
}
