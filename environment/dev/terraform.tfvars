resource_groups = {
  rg1 = {
    name       = "rg-bikash1"
    location   = "centralindia"
    managed_by = "terraform"
    tags = {
      environment = "dev"
      project     = "landingzone"
    }
  }
}

virtual_networks = {
  vnet1 = {
    name                = "vnet-bikash1"
    resource_group_name = "rg-bikash1"
    location            = "centralindia"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-bikash1"
    virtual_network_name = "vnet-bikash1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  subnet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "rg-bikash1"
    virtual_network_name = "vnet-bikash1"
    address_prefixes     = ["10.0.2.0/24"]
  }
}