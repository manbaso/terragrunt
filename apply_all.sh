outputdir="/home/ayeon/aws-devops/terragrunt"

# Run terragrunt in the build environment
echo "Executing terragrunt apply in the build environment..."
(cd "$(pwd)"/environments/build \
&& terragrunt apply -auto-approve -no-color \
> "$outputdir"/output/build_output.txt) &

# Run terragrunt in dev environment
echo "Executing terragrunt apply in the dev environment..."
(cd "$(pwd)"/environments/dev \
&& terragrunt apply -auto-approve -no-color \
> "$outputdir"/output/dev_output.txt) &

# Run terragrunt in the monitoring environment
echo "Executing terragrunt apply in the monitoring environment..."
(cd "$(pwd)"/environments/monitoring \
&& terragrunt apply -auto-approve -no-color \
> "$outputdir"/output/monitoring_output.txt) &

# Run terragrunt in the prod environment
echo "Executing terragrunt apply in the prod environment..."
(cd "$(pwd)"/environments/prod \
&& terragrunt apply -auto-approve -no-color \
> "$outputdir"/output/prod_output.txt) &

# Wait for all background processes to finish
wait

# Output next execution step
echo "All terragrunt applies have been completed."

