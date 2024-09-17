module "modrg01" {
  
  source = "../../RG"
  azrrg01 = var.azrrg01

}

module "modvnet01" {
     depends_on = [ module.modrg01 ]
    source = "../../VNET"
    rgazrvnet01 = var.rgazrvnet01
}

module "modsubnet01" {
   depends_on = [ module.modvnet01 ]
  source = "../../SUBNET"
   azrdevsbnt01 = var.azrdevsbnt01

}
module "modPIP01" {
     depends_on = [ module.modrg01,module.modvnet01 ]
    source = "../../PIP"
     varpip01 = var.varpip01  
  
}

module "modnic01" {
     depends_on = [ module.modPIP01,module.modsubnet01 ]
    source = "../../NIC"
    azrnicdev01 = var.azrnicdev01
     
}

module "modvm01" {
     depends_on = [ module.modnic01,module.modrg01 ]
    source = "../../VM01"
    azrvm01 = var.azrvm01

}