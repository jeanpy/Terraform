provider "proxmox" {
  endpoint = var.proxmox_endpoint
  # Token API fourni hors du code via PROXMOX_VE_API_TOKEN.
}
