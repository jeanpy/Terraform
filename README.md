# Formation Terraform — Administrateur Cloud DevOps

![Durée](https://img.shields.io/badge/dur%C3%A9e-3%20jours-blue) ![TP](https://img.shields.io/badge/TP-15-green) ![Plateformes](https://img.shields.io/badge/plateformes-Proxmox%20%7C%20Azure-informational)

**Objectif :** déployer, faire évoluer et supprimer des infrastructures par le code sur **Proxmox VE** et **Microsoft Azure**. Pré-requis : Linux, Docker, Azure et Proxmox. **Pédagogie :** manipulation guidée J1, guidage dégressif J2, autonomie J3.

> ⚠️ Les exemples sont des bases de laboratoire à adapter (nœud, template, réseau, abonnement, VM size, API permissions). Aucun déploiement réel n'a été effectué pour valider les accès de votre laboratoire. Vérifier la compatibilité de vos versions de providers par `terraform init` / `terraform validate` et effectuer un pilote avant la session.

## Parcours des 15 TP

| Jour | TP | Thème | Durée |
|---|---|---|---|
| J1 | [TP01](exercices/jour1/TP01.md) | Installer Terraform et découvrir HCL | 60 min |
| J1 | [TP02](exercices/jour1/TP02.md) | Cloner une VM Linux sur Proxmox | 90 min |
| J1 | [TP03](exercices/jour1/TP03.md) | Configurer Cloud-Init et SSH sur Proxmox | 75 min |
| J1 | [TP04](exercices/jour1/TP04.md) | Variables, outputs et déploiement multiple | 60 min |
| J1 | [TP05](exercices/jour1/TP05.md) | Gérer le cycle de vie et la dérive | 60 min |
| J2 | [TP06](exercices/jour2/TP06.md) | Configurer le provider Azure et Resource Group | 60 min |
| J2 | [TP07](exercices/jour2/TP07.md) | Créer réseau Azure et règles de sécurité | 90 min |
| J2 | [TP08](exercices/jour2/TP08.md) | Créer une VM Linux dans Azure | 75 min |
| J2 | [TP09](exercices/jour2/TP09.md) | Installer Nginx par Cloud-Init | 60 min |
| J2 | [TP10](exercices/jour2/TP10.md) | Paramétrer les environnements Azure | 60 min |
| J3 | [TP11](exercices/jour3/TP11.md) | Créer des modules réutilisables | 45 min |
| J3 | [TP12](exercices/jour3/TP12.md) | Explorer l’état Terraform et les dérives | 60 min |
| J3 | [TP13](exercices/jour3/TP13.md) | Stocker le State dans Azure et utiliser Git | 75 min |
| J3 | [TP14](exercices/jour3/TP14.md) | Challenge final multi-environnement | 150 min |
| J3 | [TP15](exercices/jour3/TP15.md) | Diagnostiquer, faire évoluer et restituer | 45 min |

Les durées des TP s'inscrivent dans les séances de 7 heures, complétées par démonstrations, transitions, corrections et bilan. La séquence 14 est volontairement longue et autonomisante.

## Démarrage rapide

1. Lire [préparation matérielle et comptes](docs/PREREQUIS.md) et [sécurité](docs/SECURITE.md).
2. Utiliser les projets de départ [Proxmox](projets/proxmox/) et [Azure](projets/azure/) ; ne jamais déposer les secrets dans le dépôt.
3. Parcourir les TP dans l'ordre. Lancer les commandes Terraform depuis **un seul répertoire racine par état**.
4. Consulter [l'évaluation](docs/EVALUATION.md) et [le guide formateur](docs/GUIDE_FORMATEUR.md).

## Publication GitHub

**Dépôt public stagiaires :** `README.md`, `docs/`, `exercices/`, `projets/`, `.gitignore`, `cloud-init/` (sans secret). **Dépôt privé formateur :** `corrections/` à exclure de la publication publique. Le ZIP complet fourni contient les deux pour faciliter la préparation : **il ne doit pas être poussé tel quel dans un dépôt public**.

```bash
git init
git add README.md docs exercices projets cloud-init .gitignore
git commit -m "Ajout du parcours Terraform 3 jours et des 15 TP"
git branch -M main
git remote add origin https://github.com/ORGANISATION/formation-terraform.git
git push -u origin main
```

Pour un dépôt préexistant, ne pas relancer `git init` ni écraser l'historique. Créer d'abord le dépôt vide sur GitHub et remplacer `ORGANISATION`.

## Documentation officielle

- [Terraform CLI](https://developer.hashicorp.com/terraform/cli)
- [Provider bpg/proxmox](https://bpg.sh/docs/)
- [AzureRM Terraform Registry](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Backend AzureRM](https://developer.hashicorp.com/terraform/language/backend/azurerm)

**Licence des supports originaux :** à définir par le responsable pédagogique avant publication.
