terraform init -backend-config=./stateBackend.tfvars

if [[ "$1" == "plan" ]]; then
  terraform plan -var-file=defaults.tfvars -var-file=secrets.tfvars
elif [[ "$1" == "destroy" ]]; then
    terraform destroy -var-file=defaults.tfvars -var-file=secrets.tfvars
else
  if [[ "$1" == "auto" ]]; then
    terraform apply -var-file=defaults.tfvars -var-file=secrets.tfvars --auto-approve
  else
    terraform apply -var-file=defaults.tfvars -var-file=secrets.tfvars
  fi
fi
