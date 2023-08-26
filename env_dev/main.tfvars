# variable  {
#     instance_type = "t2.micro"
# }
instance_type = {
    terraform_jenkins = {
        name = "terraform_jenkins"
        defaults  = "t2.micro"
    }
}

env = "dev"