# Projet de départ Proxmox

Copier `terraform.tfvars.example` en `terraform.tfvars` puis adapter les valeurs. Donner le token Proxmox via `export PROXMOX_VE_API_TOKEN='user@realm!tokenid=SECRET'` dans le shell de lab (ne pas le sauvegarder dans Git). Exécuter `terraform init`, `terraform validate`, puis `terraform plan`. La version du provider est une **plage indicative**, à valider et verrouiller en pilote avec `.terraform.lock.hcl` ; adapter si besoin à la version Proxmox du lab.

**Attention :** le template doit supporter Cloud-Init et le compte `debian`; la configuration de RAM/CPU/disque peut varier selon le template.
