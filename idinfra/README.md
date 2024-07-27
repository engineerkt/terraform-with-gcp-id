# Automation,gcp-resources-launching-using-terraform(iac)
# Prerequisite
         - GCP Account (with project at console)
         - Terraform installed (your local machine)
         - gcloud cli installed (your local machine)
        

## To know step by step go through below details for launching the resources

         - main.tf
            - containing the resource blocks that define the resources to be created in the target cloud platform.
         - provider.tf
            - containing the terraform block, provider configurations, and aliases.
         - variables.tf
            - containing the variable declarations used in the resource blocks.
         - terraform.tfvars
            - containing the environment-specific default values of variables.
         - outputs.tf
            - containing the output that needs to be generated on successful completion of “apply” operation.