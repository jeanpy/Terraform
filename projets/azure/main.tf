# Base J2 : décommenter et étendre progressivement pour les TP 07 à 10.
resource "azurerm_resource_group" "lab" {
  name     = "rg-${var.prefix}-terraform"
  location = var.location
}
