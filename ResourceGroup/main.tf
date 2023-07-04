locals {
    tags = {
        environment = "Lab"
        owner = "CarlosGuti"
    }
}


resource "azurerm_resource_group" "first-rg" {
  name     = var.rgname
  location = var.location
  tags = local.tags
}