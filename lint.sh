#!/usr/bin/env bash
function test_output {
    if [ "$1" != "$2" ]; then
       echo $2
       exit 1;
    else
       echo $1
    fi
}
# Packer
packer_expected="Template validated successfully."
test_output "$packer_expected" "$(packer validate -var-file=packer/variables.json.example packer/db.json)"
result=
test_output "$packer_expected" "$(packer validate -var-file=packer/variables.json.example packer/app.json)"

# Terraform
# prepare required files
cp terraform/stage/terraform.tfvars.example terraform/stage/terraform.tfvars
cp terraform/prod/terraform.tfvars.example terraform/prod/terraform.tfvars
touch ~/.ssh/appuser.pub
touch ~/.ssh/appuser

# lint stage
cd terraform/stage
terraform init
test_output "" "$(terraform validate -var-file terraform.tfvars)"
# lint prod
cd ../prod
terraform init
test_output "" "$(terraform validate -var-file terraform.tfvars)"
cd ../../

# Ansible
cd ansible
test_output "" "$(ansible-lint playbooks/site.yml --exclude=roles/jdauphant.nginx)"
