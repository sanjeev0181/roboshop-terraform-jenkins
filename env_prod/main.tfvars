# variable  {
#     instance_type = "t2.micro"
# }
components = {
    terraform_jenkins = {
        name = "terraform_jenkins"
        instance_type  = "t2.micro"
    }
}

env = prod