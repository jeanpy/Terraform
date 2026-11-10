# Prérequis et préparation du laboratoire

## Comptes et droits (formateur, avant J1)

- **Proxmox VE :** accès API dédié par apprenant, permissions minimales sur pool, datastore et bridge dédiés ; VMIDs uniques ; nœud Proxmox et template Debian Cloud-Init préparés ; cluster 8/9 à vérifier selon version du provider.
- **Template Debian :** cloud-init installé, disque Cloud-Init, `qemu-guest-agent` installé **et activé** si agent activé côté provider, compte SSH initialisé, template déjà testé manuellement.
- **Azure :** abonnement de formation, quotas VM, autorisations sur Resource Groups, `az login` opérationnel ; budget/alertes coût, stratégie de suppression ; configuration RBAC pour Blob (Storage Blob Data Contributor) si backend à l'aide d'Entra ID.
- **Stagiaire :** Linux avec Terraform CLI, Git, `az` CLI, SSH, éditeur ; clé SSH locale `~/.ssh/id_ed25519.pub` ; sortie Internet vers registres de providers, Azure et Proxmox.
- **Isolation :** IP plan/réseau de lab et plage de VMIDs par stagiaire ; pas d'identifiants de production ; noms préfixés `stXX`.

## Test préalable de 30 minutes

1. Exécuter `terraform version`, `az version`, `git --version`.
2. Sur Proxmox : vérifier le token et le clonage manuel d'une VM de test.
3. Sur Azure : vérifier `az account show`, droits, régions et quotas.
4. Vérifier `terraform init` dans les deux projets, puis `terraform validate`.
5. Tester SSH et le port HTTP depuis le poste de formation ; vérifier `terraform destroy` sur ressources de test.

## Notes pédagogiques

Le provider Proxmox suit des évolutions rapides : tester la version choisie avant la session et **commiter `.terraform.lock.hcl`** après validation sur le lab. Dans les TP Azure, la taille `Standard_B1s` et la région `westeurope` ne sont que des valeurs par défaut, à adapter selon quotas et politiques.
