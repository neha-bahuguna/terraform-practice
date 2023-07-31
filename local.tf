locals {
  resource_group_name = "1992neharg-003"
  location            = "east us"
  virtual_network 
    

    network_securitygroup_rules =[
      {
        priority =200
        destination_port_range = "3389"

      },
      {
        priority =300
        destination_port_range = "80"
      }
    ]


  }



