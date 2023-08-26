# roboshop-terraform-jenkins

* terraform init --backend-config=env_dev/state.tfvars 

* How to configure jenkins pipeline in env

    * jenkins dashboard --> select job --> Build project --> select this project is parameterized --> Add parameter 
        --> choice parameter --> Add name(env) and choices(dev or prod)
    
    * jenkins dashboard --> select job --> Build project --> select this project is parameterized --> Add parameter 
        --> choice parameter --> Add name(action) and choices(apply or destroy)

    * And this command on execute shell 

    * terraform init  -backend-config=env_dev/state.tfvars

    * terraform init --backend-config=env_${env}/state.tfvars

    * terraform apply --auto-approve -var-file=env_${env}/main.tfvars

    * terraform ${action} --auto-approve -var-file=env_${env}/main.tfvars


