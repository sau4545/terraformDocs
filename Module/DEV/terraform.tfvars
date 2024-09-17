azrrg01 = {

    rg1 = {
        name = "rg-dev-dev01"
        location = "westeurope"
    }
}

rgazrvnet01 ={

vnet = {

    name = "GOAZRVNET01"
    
    address_space = ["10.0.0.0/16"]


}
}

azrdevsbnt01 = {
 subnet01 = {

 name = "GOBEISBNT01"
 address_prefixes = ["10.0.2.0/24"]

}
}

varpip01 ={

pip01 ={

    name = "goazrvnet-pip"
}
}

azrnicdev01 = {
    nic01 = {
        name = "goazrdev01-nic"
    }
}

azrvm01 = {
  vmtest01 = {

   name = "GOAZRVM01"

}
}