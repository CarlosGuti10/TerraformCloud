locals {
    tags = {
        environment = "Lab"
        owner = "CarlosGuti"
    }
}


resource "random_string" "random"{
length = 6
special = false
upper = false
}

resource "azurerm_storage_account" "first-sg" {
  name                     = "${lower(var.saname)}${random_string.random.result}"
  resource_group_name      = var.rgname
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = local.tags
}