pip install cfn-lint
cfn-lint infra/cdk/target/*.template.json --info

# Capture the STDOUT of the cfn_lint command and set it as a variable. This should be the exit code value.
value=$?

# If the variable 'value' contains a return code of 2, which corresponds to an error from cfn_lint, then fail the build.
if [ $value -eq 2 ]; then
	exit 1
fi
