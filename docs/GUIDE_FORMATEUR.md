# Guide formateur — déroulement et animation

## Avant la formation

- Prétester toutes les variables Proxmox et Azure, s'assurer de l'accès aux registries et de la disponibilité des images.
- Vérifier les pools/VMIDs et le bon fonctionnement de Cloud-Init. Mettre un budget Azure et un suivi de consommation en place.
- Préparer un dépôt GitHub public **sans** le dossier `corrections/`, et conserver les corrections sur un dépôt privé ou sur le poste du formateur.

## Animation

- **J1 :** démonstration courte ; faire prédire le résultat du `plan` avant `apply`. Introduire un incident de configuration VM.
- **J2 :** les apprenants décrivent l'objectif et recherchent la ressource AzureRM appropriée. Laisser diagnostiquer les erreurs NSG avant de donner l'indice.
- **J3 :** équipes de deux, changement client annoncé après une première version opérationnelle ; limiter le guidage à trois indices progressifs.

## Règle de correction

Ne pas distribuer les solutions de `corrections/` avant la restitution. Utiliser [la grille d'évaluation](EVALUATION.md).

## Calendrier

Les 15 TP totalisent environ 17 h 45 d'activité dirigée et autonome ; les 3 h 15 restantes couvrent les démonstrations, échanges, transitions et bilan. Les pauses ne sont pas comprises dans les 21 h de formation.
