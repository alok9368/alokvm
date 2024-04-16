rgs = {
  rg1 = {
    name     = "tinku"
    location = "westus"
  }
}
vnets = {
  vnet1 = {
    name                = "pintu"
    location            = "eastus"
    resource_group_name = "tinku"
    address_space       = ["10.0.0.0/16"]
  }
}
subnets = {
  subnet1 = {
    name                 = "shiv"
    resource_group_name  = "tinku"
    virtual_network_name = "pintu"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
pips = {
  pip1 = {
    name                = "ganesh"
    resource_group_name = "tinku"
    location            = "eastus"
    allocation_method   = "Static"
  }
}
nics = {
  nic1 = {
    name                 = "om"
    location             = "eastus"
    resource_group_name  = "tinku"
    virtual_network_name = "pintu"
    pipname              = "ganesh"
    subnetname           = "shiv"
  }
}
nsgs = {
  nsg1 = {
    name                = "krishna"
    location            = "eastus"
    resource_group_name = "tinku"
  }
}
security_rule = {
  security_rule1 = {
    name                   = "SSH"
    priority               = "100"
    destination_port_range = "22"
  }
  security_rule2 = {
    name                   = "HTTP"
    priority               = "101"
    destination_port_range = "80"
  }
}
nsgas = {
  nsgas1 = {
    name                 = "ram"
    virtual_network_name = "pintu"
    resource_group_name  = "tinku"
    nsgname              = "krishna"
    subnetname           = "shiv"
  }
}
vms = {
  vms1 = {
   name                = "sita"
    resource_group_name = "tinku"
    location            = "eastus"
    size                = "Standard_DS1_v2"
    admin_username      = "adminuser"
    admin_password      = "admin@123456"
    nicname             = "om"
    
   
  }
}
sqls = {
  sqls1 = {
    name                       = "sitaa"
    resource_group_name          = "tinku"
    location                     = "eastus"
  }
}
sqlds = {
  sqlds1 ={
    name                = "gita"
  resource_group_name = "tinku"
  location            = "eastus"
  server_name         = "sitaa"
  }
}