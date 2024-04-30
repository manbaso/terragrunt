# Destroy the build environment
(cd /home/ayeon/aws-devops/terragrunt/environments/build \
&& terragrunt destroy -auto-approve -no-color \
> /home/ayeon/aws-devops/terragrunt/output/build_output.txt) &

# Destroy the dev environment
(cd /home/ayeon/aws-devops/terragrunt/environments/dev \
&& terragrunt destroy -auto-approve -no-color \
> /home/ayeon/aws-devops/terragrunt/output/dev_output.txt) &

# Destroy the monitoring environment
(cd /home/ayeon/aws-devops/terragrunt/environments/monitoring \
&& terragrunt destroy -auto-approve -no-color \
> /home/ayeon/aws-devops/terragrunt/output/monitoring_output.txt) &

# Destroy the prod environment
(cd /home/ayeon/aws-devops/terragrunt/environments/prod \
&& terragrunt destroy -auto-approve -no-color \
> /home/ayeon/aws-devops/terragrunt/output/prod_output.txt) &

# Wait for all background processes to finish
wait
