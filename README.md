# roboshop-terraform-jenkins

* terraform init --backend-config=env_dev/state.tfvars 

* How to configure jenkins pipeline in env

    * jenkins dashboard --> select job --> Build project --> select this project is parameterized --> Add parameter 
        --> choice parameter --> Add name(env) and choices(dev or prod)

    * And this command on execute shell 

    * terraform init --backend-config=${env}/state.tfvars



