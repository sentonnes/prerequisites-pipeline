resource "azurerm_resource_group" "test" {
  location = "UK South"
  name     = "srj-test"
  tags     = {
    Agg = data.azurerm_app_configuration_key.test.value
  }
}

data "azurerm_app_configuration_key" "test" {
  configuration_store_id = "/subscriptions/9cfe401c-1044-470a-bac0-e1c8e0e85595/resourceGroups/srj-test/providers/Microsoft.AppConfiguration/configurationStores/app-conf-srj"
  key                    = "terraformKey"
  label                  = "preq-dev"
}