set -e
export AWS_DEFAULT_REGION=us-east-1

pushd infra/cdk
cdk synth --output target --json true
popd