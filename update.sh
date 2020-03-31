
# cmd to run: ./update.sh infra network.yml  network-parameters.json
# ./update.sh serverstack servers.yml  server-parameters.json
# export AWS_PROFILE=udacity
aws cloudformation update-stack \
--stack-name $1 \
--template-body file://$2  \
--parameters file://$3 \
--capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" \
--region=us-west-2