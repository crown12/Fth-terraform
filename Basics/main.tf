#Contains Terraform settings which will be used to provision the infra
terraform {
  required_providers{
      azuren={
          source="hashicorp/azurerm"
          version = "~> 2.65"
      }
  }

  required_version = ">= 0.14.9"
}

#Specific provider, in this case azurerm, A provider plugin used to create and manager resources 
provider "azurerm" {
    features {}  
}

#Defining the resource components
#"rg" is mapped to the name value
resource "azurerm_resource_group" "rg" {
  name = "chbn-fathi-rcs"
  location = "westus2"
}
