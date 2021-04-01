resource "azurerm_container_registry" "dev_acr" {
  name                     = "${var.org}-${var.svc}-${var.env}-acr"
  resource_group_name      = "${var.org}-${var.svc}-${var.env}-rg"
  location                 = var.loc1
  sku                      = "Premium"
  admin_enabled            = false
  georeplication_locations = ["Canada Central", "South Africa North"]

  tags = {
    CreatedBy   = "Terraform"
    Purpose     = "Development Infrastructure Testing Container Registry"
    Environment = "Develop"
  }
}
